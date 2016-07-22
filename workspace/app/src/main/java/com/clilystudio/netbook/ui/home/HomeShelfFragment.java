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
import android.view.MotionEvent;
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
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookFile;
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
import com.clilystudio.netbook.event.GenderIntroEvent;
import com.clilystudio.netbook.event.ShelfUpdatedEvent;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.util.BookSourceManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.FeedIntroDialog;
import com.clilystudio.netbook.util.GenderIntroDialog;
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
    private boolean A = false;
    private long B = 0;
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
                            HomeShelfFragment.this.d();
                            break;
                    }
                }
            }).show();
            return true;
        }
    };
    private boolean b = true;
    private PullToRefreshListView d;
    private ListView mListView;
    private View f;
    private View g;
    private View h;
    private HomeShelfAdapter mAdapter;
    private int k = 0;
    private int v = 0;
    private RelativeLayout w;
    private boolean z = false;

    static long getLastAccessTime(BookShelf bookShelf, int n2) {
        if (bookShelf.getType() == BookShelf.SHELF_FEED) {
            return bookShelf.getBookFeed().getLastActionTime();
        }
        if (n2 == 0) {
            return bookShelf.getLastUpdate();
        } else {
            return bookShelf.getLastRead();
        }
    }

    static void a(HomeShelfFragment homeShelfFragment, List<BookUpdate> bookUpdates, List<BookReadRecord> bookReadRecords) {
        boolean hasUpdate = false;
        boolean hasFeedChange = false;
        int feedChapterCount = CommonUtil.getIntPref(homeShelfFragment.getActivity(), "feed_chapter_count", 50);
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
            homeShelfFragment.refreshBookShelf();
            ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.refurbish_changed);
        } else {
            if (hasFeedChange) {
                homeShelfFragment.refreshBookShelf();
            } else {
                homeShelfFragment.mAdapter.notifyDataSetChanged();
                ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.refurbish_no_change);
            }
        }
    }

    static void a(HomeShelfFragment homeShelfFragment, List<BookShelf> list, boolean bl) {
        for (BookShelf bookShelf : list) {
            if (bookShelf.getBookRecord() != null) {
                BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                String string = bookReadRecord.getBookId();
                BookReadRecord.delete(bookReadRecord);
                CommonUtil.unsubscribeBook(string);
                if (bl) {
                    homeShelfFragment.clearBookCache(string);
                }
                CommonUtil.syncBookShelf(bookShelf.getBookRecord().getBookId(), BookSyncRecord.BookModifyType.SHELF_REMOVE);
            }
        }
        homeShelfFragment.refreshBookShelf();
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
    }

    private static int b(List<BookShelf> list) {
        int n2 = 0;
        List<BookFile> list2 = TxtFileObject.getTxtFiles();
        if (list2 == null) return 0;
        if (list2.isEmpty()) {
            return 0;
        }
        ArrayList<BookShelf> arrayList = new ArrayList<>();
        ArrayList<BookShelf> arrayList2 = new ArrayList<>();
        for (BookFile bookFile : list2) {
            BookShelf bookShelf = new BookShelf();
            bookShelf.setTxt(bookFile);
            if (bookFile.isTop()) {
                arrayList2.add(bookShelf);
                continue;
            }
            arrayList.add(bookShelf);
        }
        Iterator iterator = arrayList.iterator();
        do {
            boolean bl;
            BookShelf bookShelf;
            block9:
            {
                Date date;
                if (iterator.hasNext()) {
                    bookShelf = (BookShelf) iterator.next();
                    date = bookShelf.getTxt().getUpdated();
                    if (date == null) {
                        list.add(bookShelf);
                        continue;
                    }
                } else {
                    for (BookShelf bookShelf2 : list) {
                        if (bookShelf2.getType() != 0) continue;
                        if (!bookShelf2.isTop()) break;
                        ++n2;
                    }
                    list.addAll(n2, arrayList2);
                    return list.size();
                }
                for (int j = 0; j < list.size(); ++j) {
                    BookShelf bookShelf3 = list.get(j);
                    BookReadRecord bookReadRecord = bookShelf3.getBookRecord();
                    if (bookReadRecord == null || bookReadRecord.isTop() || bookShelf3.getType() != 0 && bookShelf3.getType() != 2 || date.getTime() <= bookReadRecord.getUpdated().getTime()) continue;
                    list.add(j, bookShelf);
                    bl = true;
                    break block9;
                }
                bl = false;
            }
            if (bl) continue;
            list.add(bookShelf);
        } while (true);
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
        refreshBookShelf();
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

    static void f(final HomeShelfFragment homeShelfFragment) {
        if (!homeShelfFragment.b) {
            homeShelfFragment.refreshBookShelf();
        }
        new BaseAsyncTask<Void, Void, List<BookUpdate>>() {
            private List<BookReadRecord> a;

            @Override
            protected List<BookUpdate> doInBackground(Void... params) {
                this.a = BookReadRecord.getAll();
                ArrayList<String> arrayList = new ArrayList<>();
                for (BookReadRecord anA : this.a) {
                    arrayList.add(anA.getBookId());
                }
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().getBookUpdateList(arrayList);
            }

            @Override
            protected void onPostExecute(List<BookUpdate> bookUpdates) {
                super.onPostExecute(bookUpdates);
                if (homeShelfFragment.getActivity() != null) {
                    if (homeShelfFragment.d != null) {
                        homeShelfFragment.d.onRefreshComplete();
                    }
                    if (bookUpdates != null && !bookUpdates.isEmpty()) {
                        HomeShelfFragment.a(homeShelfFragment, bookUpdates, this.a);
                    } else {
                        if (homeShelfFragment.v == 0) {
                            ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.network_failed);
                        }
                    }
                }
            }
        }.b();
    }

    private void addFeedBook(BookReadRecord bookReadRecord) {
        CommonUtil.unsubscribeBook(bookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(bookReadRecord);
        this.refreshBookShelf();
        CommonUtil.syncBookShelf(bookReadRecord.getBookId(), BookSyncRecord.BookModifyType.FEED_ADD);
    }

    private void removeBook(String bookId) {
        refreshBookShelf();
        CommonUtil.unsubscribeBook(bookId);
        CommonUtil.syncBookShelf(bookId, BookSyncRecord.BookModifyType.SHELF_REMOVE);
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
    }

    private void a(List<BookShelf> bookShelfs, List<BookReadRecord> bookReadRecords) {
        BookFeed bookFeed = new BookFeed();
        List<BookReadRecord> v5 = BookReadRecord.getAllFeedFat();
        Iterator<BookReadRecord> v6 = bookReadRecords.iterator();
        long v2 = 0;
        while (v6.hasNext()) {
            BookReadRecord v0 = v6.next();
            v2 = Math.max(v2, v0.lastActionTime);
        }
        if (v5.isEmpty()) {
            bookFeed.setFat(false);
            bookFeed.setTitle(String.format(this.getString(R.string.shelf_feed_title), bookReadRecords.size()));
        } else {
            bookFeed.setFat(true);
            bookFeed.setTitle(String.format(this.getString(R.string.shelf_feed_fat_title), v5.get(0).getTitle()));
        }
        BookShelf v0 = new BookShelf();
        v0.setBookFeed(bookFeed);
        bookFeed.setLastActionTime(v2);
        bookShelfs.add(v0);
    }

    private void b(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case 1: {
                this.f.setVisibility(View.GONE);
                this.mListView.setVisibility(View.VISIBLE);
                return;
            }
            case 3:
        }
        this.f.setVisibility(View.VISIBLE);
        this.mListView.setVisibility(View.GONE);
    }

    private void clearBookCache(final String string) {
        new Thread() {

            @Override
            public void run() {
                CommonUtil.deleteDir(CachePathConst.Chapter + File.separator + string);
            }
        }.start();
    }

    public static void showGenderIntroDialog(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            return;
        }
        FragmentManager fragmentManager = fragmentActivity.getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        Fragment fragment = fragmentManager.findFragmentByTag("dialog_gender_intro");
        if (fragment != null) {
            fragmentTransaction.remove(fragment);
        }
        GenderIntroDialog genderIntroDialog = new GenderIntroDialog();
        genderIntroDialog.setCancelable(false);
        genderIntroDialog.show(fragmentTransaction, "dialog_gender_intro");
    }

    private List<BookShelf> j() {
        List<BookShelf> v6 = new ArrayList<>();
        final int v7 = CommonUtil.getIntPref(getActivity(), "key_shelf_sort", 1);
        List<BookReadRecord> v1;
        if (v7 != 0) {
            v1 = BookReadRecord.getAllWithTopNoFeedByRead();
        } else {
            v1 = BookReadRecord.getAllWithTopNoFeed();
        }
        List<BookReadRecord> v8 = BookReadRecord.getAllFeeding();
        long v2 = 0x0;
        if (!v8.isEmpty()) {
            v2 = CommonUtil.getLongPref(getActivity(), "FeedUpdateTime", System.currentTimeMillis());
        }
        Iterator<BookReadRecord> v9 = v1.iterator();
        int v4 = 0;
        while (v9.hasNext()) {
            BookReadRecord v0 = v9.next();
            if (v4 == 0 && !v8.isEmpty() && v2 > v0.getUpdated().getTime()) {
                this.a(v6, v8);
                v4 = 0x1;
            }
            BookShelf v10 = new BookShelf();
            v10.setBookRecord(v0);
            if (v0.readTime != null) {
                v10.setLastRead(v0.readTime.getTime());
            }
            if (v0.getUpdated() != null) {
                v10.setLastUpdate(v0.getUpdated().getTime());
            }
            v6.add(v10);
        }
        this.v = HomeShelfFragment.b(v6);
        if (v4 == 0 && !v8.isEmpty()) {
            this.a(v6, v8);
        }
        Collections.sort(v6, new Comparator<BookShelf>() {

            @Override
            public int compare(BookShelf lhs, BookShelf rhs) {
                if (lhs.isTop() && !rhs.isTop()) {
                    return -1;
                }
                if (rhs.isTop()) {
                    if (!lhs.isTop()) return 1;
                }
                if (HomeShelfFragment.getLastAccessTime(lhs, v7) == HomeShelfFragment.getLastAccessTime(rhs, v7)) {
                    return 0;
                }
                if (HomeShelfFragment.getLastAccessTime(lhs, v7) > HomeShelfFragment.getLastAccessTime(rhs, v7)) return -1;
                return 1;
            }
        });
//        :goto_5
        if (CommonUtil.getIntPref(getActivity(), "unsync_bookrecord_first", 0) != 0) {
            return v6;
        }
        String[] v3 = new String[v1.size()];
        for (int v21 = 0; v21 < v1.size(); v21++) {
            v3[v21] = v1.get(v21).getBookId();
        }
        CommonUtil.syncBookShelf(v3, BookSyncRecord.BookModifyType.SHELF_ADD);
        String[] v22 = new String[v8.size()];
        for (int v11 = 0; v11 < v8.size(); v11++) {
            v22[v11] = v8.get(v11).getBookId();
        }
        CommonUtil.syncBookShelf(v22, BookSyncRecord.BookModifyType.FEED_ADD);
        CommonUtil.putIntPref(getActivity(), "unsync_bookrecord_first", 1);
        return v6;
    }

    private void refreshBookShelf() {
        if (this.getActivity() != null) {
            List<BookShelf> list;
            long l2 = new Date().getTime();
            if (l2 - this.B < 500) {
                this.B = l2;
                return;
            }
            this.B = l2;
            list = this.j();
            if (list != null) {
                this.mAdapter.a(list);
                if (!list.isEmpty()) {
                    this.b(1);
                    if (this.b) {
                        this.d.setRefreshing();
                    }
                    this.b = false;
                    return;
                }
                if (CommonUtil.isFirstLaunch(this.getActivity())) {
                    if (!CommonUtil.isLogined() && !this.A) {
                        showGenderIntroDialog(this.getActivity());
                        return;
                    }
                    this.z = true;
                }
                this.b(3);
                return;
            }
            ToastUtil.showShortToast(this.getActivity(), "载入书架失败，请重试");
        }
    }

    public final boolean c() {
        return this.mAdapter.a();
    }

    public final void d() {
        this.mListView.removeHeaderView(this.g);
        this.w.setVisibility(View.VISIBLE);
        this.mListView.removeFooterView(this.h);
        this.mListView.addFooterView(this.h);
        this.d.setMode(PullToRefreshBase.Mode.DISABLED);
        this.d.setPullToRefreshOverScrollEnabled(false);
        this.mListView.setOnItemLongClickListener(null);
        this.mAdapter.b();
    }

    public final void e() {
        this.w.setVisibility(View.GONE);
        this.mListView.removeFooterView(this.h);
        this.d.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.d.setPullToRefreshOverScrollEnabled(true);
        this.mListView.setOnItemLongClickListener(this.mOnItemLongClickListener);
        this.mAdapter.c();
    }

    @Subscribe
    public void onBookAdded(BookAddedEvent c2) {
        if (c2.isLocal()) {
            this.refreshBookShelf();
        }
        CommonUtil.subscribeBook(c2.getBookId());
    }

    @Subscribe
    public void onBookRead(BookReadEvent g2) {
        this.refreshBookShelf();
    }

    @Subscribe
    public void onBookRemoved(BookRemovedEvent h2) {
        this.removeBook(h2.getBookId());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BusProvider.getInstance().register(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.i(TAG, "HomeShelfFragment onCreateView");
        View c = layoutInflater.inflate(R.layout.fragment_home_shelf, viewGroup, false);
        this.d = (PullToRefreshListView) c.findViewById(R.id.home_shelf_ptr);
        this.mListView = this.d.getRefreshableView();
        this.d.setOnScrollListener(this);
        this.f = c.findViewById(R.id.home_shelf_empty);
        this.h = LayoutInflater.from(this.getActivity()).inflate(R.layout.layout_shelf_footer, this.mListView, false);
        c.findViewById(R.id.add_new_book).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((HomeActivity) HomeShelfFragment.this.getActivity()).gotoHomeFind();
            }
        });
        this.w = (RelativeLayout) c.findViewById(R.id.delete_shelf_bar);
        this.w.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
        Button x = (Button) this.w.findViewById(R.id.delete);
        Button y = (Button) this.w.findViewById(R.id.select_all);
        y.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (HomeShelfFragment.this.mAdapter != null) {
                    HomeShelfFragment.this.mAdapter.d();
                }
            }
        });
        x.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (HomeShelfFragment.this.mAdapter == null) return;
                final List<BookShelf> list = HomeShelfFragment.this.mAdapter.e();
                if (list == null || list.size() == 0) {
                    ToastUtil.showToast(HomeShelfFragment.this.getActivity(), "你没有选择要删除的书哦");
                    return;
                }
                View view = HomeShelfFragment.this.getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, (ViewGroup) HomeShelfFragment.this.getActivity().getWindow().getDecorView(), false);
                final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
                new BaseDialog.Builder(HomeShelfFragment.this.getActivity()).setView(view).setPositiveButton("确定", new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        HomeShelfFragment.a(HomeShelfFragment.this, list, checkBox.isChecked());
                        HomeShelfFragment.this.e();
                    }
                }).setNegativeButton("取消", null).create().show();
            }
        });
        this.d.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener<ListView>() {
            @Override
            public void onRefresh(PullToRefreshBase<ListView> refreshView) {
                BusProvider.getInstance().post(new BookShelfRefreshEvent());
                HomeShelfAdapter.a = true;
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        HomeShelfFragment.f(HomeShelfFragment.this);
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
        this.g = LayoutInflater.from(this.getActivity()).inflate(R.layout.bookshelf_header_msg, this.mListView, false);
        this.g.setVisibility(View.GONE);
        this.mAdapter = new HomeShelfAdapter(this.getActivity());
        this.mListView.setAdapter(this.mAdapter);
        this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookShelf bookShelf = (BookShelf) HomeShelfFragment.this.mListView.getAdapter().getItem(position);
                if (bookShelf == null) return;
                if (HomeShelfFragment.this.mAdapter.a()) {
                    HomeShelfFragment.this.mAdapter.a(position - HomeShelfFragment.this.mListView.getHeaderViewsCount());
                    return;
                }
                switch (bookShelf.getType()) {
                    case 0:
                        BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                        new BookSourceManager(HomeShelfFragment.this.getActivity()).a(bookReadRecord);
                        if (bookReadRecord.isUnread()) {
                            bookReadRecord.setUnread(false);
                            bookReadRecord.save();
                            HomeShelfFragment.this.mAdapter.notifyDataSetChanged();
                        }
                        break;
                    case 2:
                        BookFile bookFile = bookShelf.getTxt();
                        if (new File(bookFile.getFilePath()).exists()) {
                            String string = bookFile.getPathAndName();
                            Intent intent = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
                            intent.putExtra("file_name", string);
                            HomeShelfFragment.this.startActivity(intent);
                        } else {
                            ToastUtil.showShortToast(HomeShelfFragment.this.getActivity(), "书籍不存在");
                            TxtFileObject.delete(bookFile);
                            BusProvider.getInstance().post(new ShelfUpdatedEvent());
                        }
                        break;
                    case 3:
                        Intent intent = CommonUtil.getBoolPref(HomeShelfFragment.this.getActivity(), "feed_intro", true) ? new Intent(HomeShelfFragment.this.getActivity(), FeedIntroActivity.class) : new Intent(HomeShelfFragment.this.getActivity(), FeedListActivity.class);
                        HomeShelfFragment.this.startActivity(intent);
                        break;
                }
            }
        });
        this.mListView.setOnItemLongClickListener(this.mOnItemLongClickListener);
        this.mAdapter.a(x, y);
        this.refreshBookShelf();
        this.mListView.getHeight();
        Log.i(TAG, "" + this.mListView.getHeight() + " ," + this.mListView.getMeasuredHeight());
        return c;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onDownloadProgress(DownloadProgressEvent i2) {
        if (this.k == 0) {
            this.mAdapter.notifyDataSetChanged();
        }
    }

    @Subscribe
    public void onFeedAdded(FeedAddedEvent l2) {
        this.addFeedBook(l2.getBookReadRecord());
    }

    @Subscribe
    public void onFeedRemoved(FeedRemovedEvent n2) {
        this.refreshBookShelf();
        CommonUtil.subscribeBook(n2.getBookId());
        CommonUtil.syncBookShelf(n2.getBookId(), BookSyncRecord.BookModifyType.FEED_REMOVE);
    }

    @Subscribe
    public void onFeedSettingChanged(FeedSettingChangedEvent m2) {
        this.d.setRefreshing();
    }

    @Subscribe
    public void onGenderIntroEvent(GenderIntroEvent r2) {
        int n2 = r2.getGender();
        System.out.println("type : " + n2);
        if (n2 == 0) {
            this.b(3);
        } else {
            BaseLoadingTask<String, BookGenderRecommend> bookGenderRecommendc = new BaseLoadingTask<String, BookGenderRecommend>(this.getActivity(), getString(R.string.recommend_loading)) {

                @Override
                public BookGenderRecommend a(String... var1) {
                    int n;
                    BookGenderRecommend bookGenderRecommend;
                    int n2 = 0;
                    bookGenderRecommend = ApiServiceProvider.getApiService().getBookGenderRecommend(var1[0]);
                    if (!bookGenderRecommend.isOk()) return bookGenderRecommend;
                    BookGenderRecommend.RecommendBook[] recommendBooks = bookGenderRecommend.getBooks();
                    n = recommendBooks.length;
                    while (n2 < n) {
                        BookGenderRecommend.RecommendBook recommendBook = recommendBooks[n2];
                        BookReadRecord.create(recommendBook);
                        CommonUtil.syncBookShelf(recommendBook.get_id(), BookSyncRecord.BookModifyType.SHELF_ADD);
                        ++n2;
                    }
                    return bookGenderRecommend;
                }

                @Override
                public void a(BookGenderRecommend bookGenderRecommend) {
                    if (bookGenderRecommend != null && bookGenderRecommend.isOk()) {
                        HomeShelfFragment.this.refreshBookShelf();
                    } else {
                        HomeShelfFragment.this.b(3);
                    }
                }
            };
            if (n2 == 1) {
                bookGenderRecommendc.b("male");
            } else if (n2 == 2) {
                bookGenderRecommendc.b("female");
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.mAdapter.a()) {
            this.e();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.A = false;
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.A = true;
    }

    @Override
    public void onScroll(AbsListView absListView, int n2, int n3, int n4) {
    }

    @Override
    public void onScrollStateChanged(AbsListView absListView, int n2) {
        this.k = n2;
    }

    @Subscribe
    public void onShelfUpdated(ShelfUpdatedEvent a2) {
        if (a2.getBookCounts() == 0 && this.z && CommonUtil.isFirstLaunch(this.getActivity())) {
            if (!this.A) {
                showGenderIntroDialog(this.getActivity());
            }
            return;
        }
        this.refreshBookShelf();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setUserVisibleHint(boolean bl) {
        super.setUserVisibleHint(bl);
        if (!bl) {
            if (this.mAdapter.a()) {
                this.e();
            }
        }
    }
}
