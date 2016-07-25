package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.event.BookAddedEvent;
import com.clilystudio.netbook.event.BookReadEvent;
import com.clilystudio.netbook.event.BookRemovedEvent;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.FeedAddedEvent;
import com.clilystudio.netbook.event.FeedRemovedEvent;
import com.clilystudio.netbook.event.FeedSettingChangedEvent;
import com.clilystudio.netbook.event.ShelfUpdatedEvent;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.util.BookSourceManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.FeedIntroDialog;
import com.clilystudio.netbook.util.ToastUtil;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.squareup.otto.Subscribe;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class HomeShelfFragment extends Fragment implements AbsListView.OnScrollListener {
    private static final String TAG = HomeShelfFragment.class.getSimpleName();
    private long mRefreshTime = 0;
    private int mScrollState = 0;
    private boolean mIsLoading = true;
    private PullToRefreshListView mBookShelfListView;
    private ListView mListView;
    private View mEmptyView;
    private View mFooterView;
    private HomeShelfAdapter mAdapter;
    private RelativeLayout mBottomBar;
    private AdapterView.OnItemLongClickListener mOnItemLongClickListener = new AdapterView.OnItemLongClickListener() {
        @Override
        public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
            final BookShelf bookShelf = (BookShelf) mListView.getAdapter().getItem(position);
            if (bookShelf == null) {
                return true;
            }
            CharSequence[] items;
            final int type = bookShelf.getType();
            if (type == BookShelf.SHELF_BOOK) {
                items = bookShelf.isTop() ? new String[]{"取消置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"} : new String[]{"置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
            } else {
                return true;
            }
            BaseDialog.Builder builder = new BaseDialog.Builder(getActivity());
            builder.setTitle(bookShelf.getTitle());
            builder.setSingleChoiceItems(items, 0, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    switch (which) {
                        case 0:
                            setBookShelfTop(bookShelf);
                            break;
                        case 1:
                            BookReadRecord bookRecord = bookShelf.getBookRecord();
                            if (bookRecord != null) {
                                startActivity(BookInfoActivity.getIntent(getActivity(), bookRecord.getBookId()));
                            }
                            break;
                        case 2:
                            moveBookShelfToFeed(bookShelf.getBookRecord());
                            break;
                        case 3:
                            new BookDownloadManager(getActivity()).startDownload(bookShelf.getBookRecord());
                            break;
                        case 4:
                            removeBookShelf(bookShelf);
                            break;
                        case 5:
                            mBottomBar.setVisibility(View.VISIBLE);
                            mListView.removeFooterView(mFooterView);
                            mListView.addFooterView(mFooterView);
                            mBookShelfListView.setMode(PullToRefreshBase.Mode.DISABLED);
                            mBookShelfListView.setPullToRefreshOverScrollEnabled(false);
                            mListView.setOnItemLongClickListener(null);
                            mAdapter.setBatchEdit();
                            break;
                    }
                }
            }).show();
            return true;
        }
    };

    static long getLastAccessTime(BookShelf bookShelf, int shelfSort) {
        if (bookShelf.getType() == BookShelf.SHELF_FEED) {
            return bookShelf.getBookFeed().getLastActionTime();
        }
        if (shelfSort == 0) {
            return bookShelf.getLastUpdate();
        } else {
            return bookShelf.getLastRead();
        }
    }

    private void updateBookShelf(List<BookUpdate> bookUpdates, List<BookReadRecord> bookReadRecords) {
        boolean hasUpdate = false;
        boolean hasFeedChange = false;
        int feedChapterCount = CommonUtil.getIntPref(getActivity(), "feed_chapter_count", 50);
        int minSize = Math.min(bookReadRecords.size(), bookUpdates.size());
        for (int i = 0; i < minSize; i++) {
            BookReadRecord bookReadRecord = bookReadRecords.get(i);
            BookUpdate bookUpdate = bookUpdates.get(i);
            if (bookReadRecord != null && bookUpdate != null) {
                int chaptersCount = bookUpdate.getChaptersCount();
                if (bookReadRecord.getUpdated().getTime() < bookUpdate.getUpdated().getTime()) {
                    bookReadRecord.setUpdated(bookUpdate.getUpdated());
                    bookReadRecord.setLastChapter(bookUpdate.getLastChapter());
                    bookReadRecord.setUnread(true);
                    bookReadRecord.setChapterCount(chaptersCount);
                    bookReadRecord.save();
                    hasUpdate = true;
                }
                if (bookReadRecord.isFeeding()) {
                    boolean feedFat = chaptersCount - bookReadRecord.getChapterCountAtFeed() >= feedChapterCount;
                    if (bookReadRecord.isFeedFat() != feedFat) {
                        bookReadRecord.setFeedFat(feedFat);
                        bookReadRecord.save();
                        hasFeedChange = true;
                    }
                }
            }
        }
        if (hasUpdate) {
            reloadBookShelf();
            ToastUtil.showToast(getActivity(), R.string.refurbish_changed);
        } else {
            if (hasFeedChange) {
                reloadBookShelf();
            } else {
                mAdapter.notifyDataSetChanged();
                ToastUtil.showToast(getActivity(), R.string.refurbish_no_change);
            }
        }
    }

    private void batchRemoveBookShelf(List<BookShelf> list, boolean isClearCache) {
        for (BookShelf bookShelf : list) {
            if (bookShelf.getBookRecord() != null) {
                BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                String bookId = bookReadRecord.getBookId();
                BookReadRecord.delete(bookReadRecord);
                CommonUtil.unsubscribeBook(bookId);
                if (isClearCache) {
                    clearBookCache(bookId);
                }
                CommonUtil.syncBookShelf(bookShelf.getBookRecord().getBookId(), BookSyncRecord.BookModifyType.SHELF_REMOVE);
            }
        }
        reloadBookShelf();
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
    }

    private void moveBookShelfToFeed(BookReadRecord bookReadRecord) {
        if (bookReadRecord != null) {
            long l2 = System.currentTimeMillis();
            CommonUtil.putLongPref(getActivity(), "FeedUpdateTime", l2);
            bookReadRecord.setFeeding(true);
            bookReadRecord.setChapterCountAtFeed(bookReadRecord.getChapterCount());
            bookReadRecord.setLastActionTime(new Date().getTime());
            bookReadRecord.save();
            addFeedBook(bookReadRecord);
            if (CommonUtil.getBoolPref(getActivity(), "feed_intro_dialog", true)) {
                FragmentActivity fragmentActivity = getActivity();
                if (fragmentActivity != null) {
                    FragmentManager fragmentManager = fragmentActivity.getSupportFragmentManager();
                    FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                    Fragment fragment = fragmentManager.findFragmentByTag("dialog_feed_intro");
                    if (fragment != null) {
                        fragmentTransaction.remove(fragment);
                    }
                    new FeedIntroDialog().show(fragmentTransaction, "dialog_feed_intro");
                }
                CommonUtil.putBoolPref(getActivity(), "feed_intro_dialog", false);
            }
        }
    }

    void setBookShelfTop(BookShelf bookShelf) {
        BookReadRecord bookReadRecord = bookShelf.getBookRecord();
        if (bookReadRecord != null) {
            bookReadRecord.setTop(!bookReadRecord.isTop());
            bookReadRecord.save();
        }
        reloadBookShelf();
    }

    private void removeBookShelf(final BookShelf bookShelf) {
        View view = getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, (ViewGroup) getActivity().getWindow().getDecorView(), false);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
        checkBox.setVisibility(View.VISIBLE);
        new BaseDialog.Builder(getActivity()).setView(view).setPositiveButton("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (bookShelf.getBookRecord() != null) {
                    BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                    String bookId = bookReadRecord.getBookId();
                    BookReadRecord.delete(bookReadRecord);
                    removeBook(bookId);
                    if (checkBox.isChecked()) {
                        clearBookCache(bookId);
                    }
                }
            }
        }).setNegativeButton("取消", null).create().show();
    }

    private void refreshBookShelf() {
        if (!mIsLoading) {
            reloadBookShelf();
        }
        new BaseAsyncTask<Void, Void, List<BookUpdate>>() {
            List<BookReadRecord> bookReadRecordList;

            @Override
            protected List<BookUpdate> doInBackground(Void... params) {
                bookReadRecordList = BookReadRecord.getAll();
                ArrayList<String> bookIds = new ArrayList<>();
                for (BookReadRecord bookReadRecord : bookReadRecordList) {
                    bookIds.add(bookReadRecord.getBookId());
                }
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().getBookUpdateList(bookIds);
            }

            @Override
            protected void onPostExecute(List<BookUpdate> bookUpdates) {
                super.onPostExecute(bookUpdates);
                if (getActivity() != null) {
                    if (mBookShelfListView != null) {
                        mBookShelfListView.onRefreshComplete();
                    }
                    if (bookUpdates != null && !bookUpdates.isEmpty()) {
                        updateBookShelf(bookUpdates, bookReadRecordList);
                    } else {
                        ToastUtil.showToast(getActivity(), R.string.network_failed);
                    }
                }
            }
        }.b();
    }

    private void addFeedBook(BookReadRecord bookReadRecord) {
        CommonUtil.unsubscribeBook(bookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(bookReadRecord);
        reloadBookShelf();
        CommonUtil.syncBookShelf(bookReadRecord.getBookId(), BookSyncRecord.BookModifyType.FEED_ADD);
    }

    private void removeBook(String bookId) {
        reloadBookShelf();
        CommonUtil.unsubscribeBook(bookId);
        CommonUtil.syncBookShelf(bookId, BookSyncRecord.BookModifyType.SHELF_REMOVE);
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
    }

    private void addFeedingItem(List<BookShelf> bookShelfs, List<BookReadRecord> allFedding) {
        BookFeed bookFeed = new BookFeed();
        List<BookReadRecord> allFeedFat = BookReadRecord.getAllFeedFat();
        Iterator<BookReadRecord> iterator = allFedding.iterator();
        long lastActionTime = 0;
        while (iterator.hasNext()) {
            BookReadRecord readRecord = iterator.next();
            lastActionTime = Math.max(lastActionTime, readRecord.lastActionTime);
        }
        if (allFeedFat.isEmpty()) {
            bookFeed.setFat(false);
            bookFeed.setTitle(String.format(getString(R.string.shelf_feed_title), allFedding.size()));
        } else {
            bookFeed.setFat(true);
            bookFeed.setTitle(String.format(getString(R.string.shelf_feed_fat_title), allFeedFat.get(0).getTitle()));
        }
        BookShelf bookShelf = new BookShelf();
        bookShelf.setBookFeed(bookFeed);
        bookFeed.setLastActionTime(lastActionTime);
        bookShelfs.add(bookShelf);
    }

    private void clearBookCache(final String bookId) {
        new Thread() {
            @Override
            public void run() {
                CommonUtil.deleteDir(CachePathConst.Chapter + File.separator + bookId);
            }
        }.start();
    }

    private List<BookShelf> sortBookShelfList() {
        List<BookShelf> bookShelfs = new ArrayList<>();
        final int shelfSort = CommonUtil.getIntPref(getActivity(), "key_shelf_sort", 1);
        List<BookReadRecord> bookReadRecords;
        if (shelfSort != 0) {
            bookReadRecords = BookReadRecord.getAllWithTopNoFeedByRead();
        } else {
            bookReadRecords = BookReadRecord.getAllWithTopNoFeed();
        }
        List<BookReadRecord> allFeeding = BookReadRecord.getAllFeeding();
        long feedUpdateTime = 0;
        if (!allFeeding.isEmpty()) {
            feedUpdateTime = CommonUtil.getLongPref(getActivity(), "FeedUpdateTime", System.currentTimeMillis());
        }
        Iterator<BookReadRecord> iterator = bookReadRecords.iterator();
        boolean hasFeedUpdate = false;
        while (iterator.hasNext()) {
            BookReadRecord readRecord = iterator.next();
            if (!hasFeedUpdate && !allFeeding.isEmpty() && feedUpdateTime > readRecord.getUpdated().getTime()) {
                addFeedingItem(bookShelfs, allFeeding);
                hasFeedUpdate = true;
            }
            BookShelf bookShelf = new BookShelf();
            bookShelf.setBookRecord(readRecord);
            if (readRecord.readTime != null) {
                bookShelf.setLastRead(readRecord.readTime.getTime());
            }
            if (readRecord.getUpdated() != null) {
                bookShelf.setLastUpdate(readRecord.getUpdated().getTime());
            }
            bookShelfs.add(bookShelf);
        }
        if (!hasFeedUpdate && !allFeeding.isEmpty()) {
            addFeedingItem(bookShelfs, allFeeding);
        }
        Collections.sort(bookShelfs, new Comparator<BookShelf>() {

            @Override
            public int compare(BookShelf lhs, BookShelf rhs) {
                if (lhs.isTop() && !rhs.isTop()) {
                    return -1;
                }
                if (rhs.isTop()) {
                    if (!lhs.isTop()) return 1;
                }
                if (HomeShelfFragment.getLastAccessTime(lhs, shelfSort) == HomeShelfFragment.getLastAccessTime(rhs, shelfSort)) {
                    return 0;
                }
                if (HomeShelfFragment.getLastAccessTime(lhs, shelfSort) > HomeShelfFragment.getLastAccessTime(rhs, shelfSort)) return -1;
                return 1;
            }
        });
        if (CommonUtil.getIntPref(getActivity(), "unsync_bookrecord_first", 0) != 0) {
            return bookShelfs;
        }
        String[] bookIds = new String[bookReadRecords.size()];
        for (int i = 0; i < bookReadRecords.size(); i++) {
            bookIds[i] = bookReadRecords.get(i).getBookId();
        }
        CommonUtil.syncBookShelf(bookIds, BookSyncRecord.BookModifyType.SHELF_ADD);
        String[] feedBookIds = new String[allFeeding.size()];
        for (int i = 0; i < allFeeding.size(); i++) {
            feedBookIds[i] = allFeeding.get(i).getBookId();
        }
        CommonUtil.syncBookShelf(feedBookIds, BookSyncRecord.BookModifyType.FEED_ADD);
        CommonUtil.putIntPref(getActivity(), "unsync_bookrecord_first", 1);
        return bookShelfs;
    }

    private void reloadBookShelf() {
        if (getActivity() != null) {
            long time = new Date().getTime();
            if (time - mRefreshTime > 500) {
                mRefreshTime = time;
                List<BookShelf> list = sortBookShelfList();
                if (list != null) {
                    mAdapter.a(list);
                    if (!list.isEmpty()) {
                        mEmptyView.setVisibility(View.GONE);
                        mListView.setVisibility(View.VISIBLE);
                        if (mIsLoading) {
                            mBookShelfListView.setRefreshing();
                        }
                        mIsLoading = false;
                    } else {
                        mEmptyView.setVisibility(View.VISIBLE);
                        mListView.setVisibility(View.GONE);
                    }
                } else {
                    ToastUtil.showShortToast(getActivity(), "载入书架失败，请重试");
                }
            }
        }
    }

    public final boolean isEditing() {
        return mAdapter.isEditing();
    }

    public final void resetView() {
        mBottomBar.setVisibility(View.GONE);
        mListView.removeFooterView(mFooterView);
        mBookShelfListView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        mBookShelfListView.setPullToRefreshOverScrollEnabled(true);
        mListView.setOnItemLongClickListener(mOnItemLongClickListener);
        mAdapter.c();
    }

    @Subscribe
    public void onBookAdded(BookAddedEvent bookAddedEvent) {
        if (bookAddedEvent.isLocal()) {
            reloadBookShelf();
        }
        CommonUtil.subscribeBook(bookAddedEvent.getBookId());
    }

    @Subscribe
    public void onBookRead(BookReadEvent bookReadEvent) {
        reloadBookShelf();
    }

    @Subscribe
    public void onBookRemoved(BookRemovedEvent bookRemovedEvent) {
        removeBook(bookRemovedEvent.getBookId());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BusProvider.getInstance().register(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.i(TAG, "HomeShelfFragment onCreateView");
        View contentView = layoutInflater.inflate(R.layout.fragment_home_shelf, viewGroup, false);
        mBookShelfListView = (PullToRefreshListView) contentView.findViewById(R.id.home_shelf_ptr);
        mListView = mBookShelfListView.getRefreshableView();
        mBookShelfListView.setOnScrollListener(this);
        mEmptyView = contentView.findViewById(R.id.home_shelf_empty);
        mFooterView = LayoutInflater.from(getActivity()).inflate(R.layout.layout_shelf_footer, mListView, false);
        contentView.findViewById(R.id.add_new_book).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((HomeActivity) getActivity()).gotoHomeFind();
            }
        });
        mBottomBar = (RelativeLayout) contentView.findViewById(R.id.delete_shelf_bar);
        Button selectAllButton = (Button) mBottomBar.findViewById(R.id.select_all);
        selectAllButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mAdapter != null) {
                    mAdapter.selectAll();
                }
            }
        });
        Button deleteButton = (Button) mBottomBar.findViewById(R.id.delete);
        deleteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mAdapter != null) {
                    final List<BookShelf> selectedBooks = mAdapter.getSelectedBooks();
                    if (selectedBooks == null || selectedBooks.size() == 0) {
                        ToastUtil.showToast(getActivity(), "你没有选择要删除的书哦");
                    } else {
                        View view = getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, (ViewGroup) getActivity().getWindow().getDecorView(), false);
                        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
                        new BaseDialog.Builder(getActivity()).setView(view).setPositiveButton("确定", new DialogInterface.OnClickListener() {

                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                batchRemoveBookShelf(selectedBooks, checkBox.isChecked());
                                resetView();
                            }
                        }).setNegativeButton("取消", null).create().show();
                    }
                }
            }
        });
        mBookShelfListView.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                BusProvider.getInstance().post(new BookShelfRefreshEvent());
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        refreshBookShelf();
                    }
                }, 1000);
            }
        });
        if (Build.VERSION.SDK_INT >= 19) {
            this.mListView.setFooterDividersEnabled(false);
        }
        View view = LayoutInflater.from(this.getActivity()).inflate(R.layout.ptr_list_footer_empty_view, (ViewGroup) getActivity().getWindow().getDecorView(), false);
        this.mListView.addFooterView(view);
        CommonUtil.addHeaderView(this.getActivity(), this.mListView);
        this.mAdapter = new HomeShelfAdapter(this.getActivity());
        this.mListView.setAdapter(this.mAdapter);
        this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookShelf bookShelf = (BookShelf) mListView.getAdapter().getItem(position);
                if (bookShelf == null) return;
                if (mAdapter.isEditing()) {
                    mAdapter.a(position - mListView.getHeaderViewsCount());
                    return;
                }
                switch (bookShelf.getType()) {
                    case 0:
                        BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                        new BookSourceManager(getActivity()).a(bookReadRecord);
                        if (bookReadRecord.isUnread()) {
                            bookReadRecord.setUnread(false);
                            bookReadRecord.save();
                            mAdapter.notifyDataSetChanged();
                        }
                        break;
                    case 3:
                        Intent intent = CommonUtil.getBoolPref(getActivity(), "feed_intro", true) ? new Intent(getActivity(), FeedIntroActivity.class) : new Intent(getActivity(), FeedListActivity.class);
                        startActivity(intent);
                        break;
                }
            }
        });
        mListView.setOnItemLongClickListener(mOnItemLongClickListener);
        mAdapter.a(deleteButton, selectAllButton);
        reloadBookShelf();
        mListView.getHeight();
        Log.i(TAG, "" + mListView.getHeight() + " ," + mListView.getMeasuredHeight());
        return contentView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onDownloadProgress(DownloadProgressEvent downloadProgressEvent) {
        if (mScrollState == 0) {
            mAdapter.notifyDataSetChanged();
        }
    }

    @Subscribe
    public void onFeedAdded(FeedAddedEvent feedAddedEvent) {
        addFeedBook(feedAddedEvent.getBookReadRecord());
    }

    @Subscribe
    public void onFeedRemoved(FeedRemovedEvent feedRemovedEvent) {
        reloadBookShelf();
        CommonUtil.subscribeBook(feedRemovedEvent.getBookId());
        CommonUtil.syncBookShelf(feedRemovedEvent.getBookId(), BookSyncRecord.BookModifyType.FEED_REMOVE);
    }

    @Subscribe
    public void onFeedSettingChanged(FeedSettingChangedEvent feedSettingChangedEvent) {
        mBookShelfListView.setRefreshing();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (mAdapter.isEditing()) {
            resetView();
        }
    }

    @Override
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
    }

    @Override
    public void onScrollStateChanged(AbsListView absListView, int scrollState) {
        mScrollState = scrollState;
    }

    @Subscribe
    public void onShelfUpdated(ShelfUpdatedEvent shelfUpdatedEvent) {
        if (shelfUpdatedEvent.getBookCounts() > 0 && !CommonUtil.isFirstLaunch(getActivity())) {
            reloadBookShelf();
        }
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser) {
            if (mAdapter.isEditing()) {
                resetView();
            }
        }
    }
}
