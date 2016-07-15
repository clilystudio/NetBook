package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
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
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookAddedEvent;
import com.clilystudio.netbook.event.BookReadEvent;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.FeedAddedEvent;
import com.clilystudio.netbook.event.FeedRemovedEvent;
import com.clilystudio.netbook.event.FeedSettingChangedEvent;
import com.clilystudio.netbook.event.GenderIntroEvent;
import com.clilystudio.netbook.event.ShelfUpdatedEvent;
import com.clilystudio.netbook.event.BookRemovedEvent;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.model.ShelfMsgRoot;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.reader.txt.TocManager;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.util.BookSourceManager;
import com.clilystudio.netbook.util.FeedIntroDialog;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.TempUtil;
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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class HomeShelfFragment extends Fragment implements AbsListView.OnScrollListener {
    private static final String a = HomeShelfFragment.class.getSimpleName();
    private boolean A = false;
    private long B = 0;
    private AdapterView.OnItemClickListener C;
    private AdapterView.OnItemLongClickListener D;
    private boolean b = true;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private View h;
    private ShelfMsg i;
    private HomeShelfAdapter j;
    private int k = 0;
    private int v = 0;
    private RelativeLayout w;
    private boolean z = false;

    public HomeShelfFragment() {
        this.C = new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookShelf bookShelf = HomeShelfFragment.a(HomeShelfFragment.this, position);
                if (bookShelf == null) return;
                if (HomeShelfFragment.a(HomeShelfFragment.this).a()) {
                    HomeShelfFragment.a(HomeShelfFragment.this).a(position - HomeShelfFragment.j(HomeShelfFragment.this).getHeaderViewsCount());
                    return;
                }
                switch (bookShelf.getType()) {
                    case 0:
                        BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                        new BookSourceManager(HomeShelfFragment.this.getActivity()).a(bookReadRecord);
                        if (bookReadRecord.isUnread()) {
                            bookReadRecord.setUnread(false);
                            bookReadRecord.save();
                            HomeShelfFragment.a(HomeShelfFragment.this).notifyDataSetChanged();
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
                        Intent intent = TempUtil.l(HomeShelfFragment.this.getActivity(), "feed_intro") ? new Intent(HomeShelfFragment.this.getActivity(), FeedIntroActivity.class) : new Intent(HomeShelfFragment.this.getActivity(), FeedListActivity.class);
                        HomeShelfFragment.this.startActivity(intent);
                        break;
                }
            }
        };
        this.D = new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                CharSequence[] arrcharSequence;
                BookShelf bookShelf = HomeShelfFragment.a(HomeShelfFragment.this, position);
                if (bookShelf == null) {
                    return true;
                }
                int n3 = bookShelf.getType();
                if (n3 == 1) {
                    arrcharSequence = new String[]{"删除", "去广告"};
                } else if (n3 == 0) {
                    arrcharSequence = bookShelf.isTop() ? new String[]{"取消置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"} : new String[]{"置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                } else if (n3 == 2) {
                    arrcharSequence = bookShelf.isTop() ? new String[]{"取消置顶", "删除", "批量管理"} : new String[]{"置顶", "删除", "批量管理"};
                } else {
                    arrcharSequence = null;
                    if (n3 == 4) {
                        arrcharSequence = bookShelf.isTop() ? new String[]{"取消置顶", "书籍详情", "删除", "批量管理"} : new String[]{"置顶", "书籍详情", "删除", "批量管理"};
                    }
                }
                HomeShelfFragment.a(HomeShelfFragment.this, arrcharSequence, bookShelf);
                return true;
            }
        };
    }

    static /* synthetic */ long a(BookShelf bookShelf, int n2) {
        if (bookShelf.getType() == 3) {
            return bookShelf.getBookFeed().getLastActionTime();
        }
        if (n2 == 0) {
            return bookShelf.getLastUpdate();
        }
        return bookShelf.getLastRead();
    }

    static /* synthetic */ HomeShelfAdapter a(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.j;
    }

    static /* synthetic */ BookShelf a(HomeShelfFragment homeShelfFragment, int n2) {
        return (BookShelf) homeShelfFragment.e.getAdapter().getItem(n2);
    }

    static /* synthetic */ ShelfMsg a(HomeShelfFragment homeShelfFragment, ShelfMsg shelfMsg) {
        homeShelfFragment.i = shelfMsg;
        return shelfMsg;
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        if (bookReadRecord != null) {
            homeShelfFragment.startActivity(BookInfoActivity.a(homeShelfFragment.getActivity(), bookReadRecord.getBookId()));
        }
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookShelf bookShelf) {
        homeShelfFragment.a(bookShelf, true);
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookShelf bookShelf, boolean bl) {
        homeShelfFragment.a(bookShelf, bl);
    }

    static /* synthetic */ void a(final HomeShelfFragment homeShelfFragment, final List<BookShelf> list) {
        View view = homeShelfFragment.getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, (ViewGroup) homeShelfFragment.getActivity().getWindow().getDecorView(), false);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
        new BaseDialog.Builder(homeShelfFragment.getActivity()).setView(view).setPositiveButton("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                HomeShelfFragment.a(homeShelfFragment, list, checkBox.isChecked());
                homeShelfFragment.e();
            }
        }).setNegativeButton("取消", null).create().show();
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, List<BookUpdate> bookUpdates, List<BookReadRecord> bookReadRecords) {
        boolean hasUpdate = false;
        boolean hasFeedChange = false;
        int feedChapterCount = TempUtil.getIntPref(homeShelfFragment.getActivity(), "feed_chapter_count", 50);
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
            homeShelfFragment.k();
            ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.refurbish_changed);
        } else {
            if (hasFeedChange) {
                homeShelfFragment.k();
            } else {
                homeShelfFragment.j.notifyDataSetChanged();
                ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.refurbish_no_change);
            }
        }
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, List<BookShelf> list, boolean bl) {
        for (BookShelf bookShelf : list) {
            if (bookShelf.getBookRecord() != null) {
                BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                String string = bookReadRecord.getBookId();
                BookReadRecord.delete(bookReadRecord);
                TempUtil.t(string);
                if (bl) {
                    homeShelfFragment.b(string);
                }
                TempUtil.v(bookShelf.getBookRecord().getBookId());
            } else if (bookShelf.getTxt() != null) {
                homeShelfFragment.a(bookShelf.getTxt());
            }
        }
        homeShelfFragment.k();
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
    }

    static /* synthetic */ void a(final HomeShelfFragment homeShelfFragment, CharSequence[] arrcharSequence, final BookShelf bookShelf) {
        if (arrcharSequence == null || bookShelf == null) {
            return;
        }
        BaseDialog.Builder h2 = new BaseDialog.Builder(homeShelfFragment.getActivity());
        h2.setTitle(bookShelf.getTitle());
        h2.setSingleChoiceItems(arrcharSequence, 0, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                switch (bookShelf.getType()) {
                    case 1: {
                        if (which == 0) {
                            HomeShelfFragment.a(homeShelfFragment, bookShelf);
                        }
                        return;
                    }
                    case 0: {
                        if (which == 0) {
                            HomeShelfFragment.b(homeShelfFragment, bookShelf);
                            return;
                        }
                        if (which == 1) {
                            HomeShelfFragment.a(homeShelfFragment, bookShelf.getBookRecord());
                            return;
                        }
                        if (which == 2) {
                            HomeShelfFragment.b(homeShelfFragment, bookShelf.getBookRecord());
                            return;
                        }
                        if (which == 3) {
                            HomeShelfFragment.c(homeShelfFragment, bookShelf.getBookRecord());
                            return;
                        }
                        if (which == 4) {
                            HomeShelfFragment.c(homeShelfFragment, bookShelf);
                            return;
                        }
                        if (which != 5) return;
                        {
                            homeShelfFragment.d();
                            return;
                        }
                    }
                    case 2: {
                        if (which == 0) {
                            HomeShelfFragment.b(homeShelfFragment, bookShelf);
                            return;
                        }
                        if (which == 1) {
                            HomeShelfFragment.c(homeShelfFragment, bookShelf);
                            return;
                        }
                        if (which != 2) return;
                        {
                            homeShelfFragment.d();
                            return;
                        }
                    }
                    case 4:
                        if (which == 0) {
                            HomeShelfFragment.b(homeShelfFragment, bookShelf);
                        } else if (which == 2) {
                            HomeShelfFragment.c(homeShelfFragment, bookShelf);
                        } else if (which == 3) {
                            homeShelfFragment.d();
                        }
                        break;
                }
            }
        }).show();
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

    public static HomeShelfFragment b() {
        return new HomeShelfFragment();
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, int n2) {
        homeShelfFragment.b(n2);
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        if (bookReadRecord != null) {
            long l2 = System.currentTimeMillis();
            TempUtil.d(homeShelfFragment.getActivity(), "FeedUpdateTime", l2);
            bookReadRecord.setFeeding(true);
            bookReadRecord.setChapterCountAtFeed(bookReadRecord.getChapterCount());
            bookReadRecord.setLastActionTime(new Date().getTime());
            bookReadRecord.save();
            homeShelfFragment.a(bookReadRecord);
            if (TempUtil.a(homeShelfFragment.getActivity(), "feed_intro_dialog", true)) {
                FragmentActivity fragmentActivity = homeShelfFragment.getActivity();
                if (fragmentActivity != null) {
                    FragmentManager fragmentManager = fragmentActivity.getSupportFragmentManager();
                    FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                    Fragment fragment = fragmentManager.findFragmentByTag("dialog_feed_intro");
                    if (fragment != null) {
                        fragmentTransaction.remove(fragment);
                    }
                    new FeedIntroDialog().show(fragmentTransaction, "dialog_feed_intro");
                }
                TempUtil.b(homeShelfFragment.getActivity(), "feed_intro_dialog", false);
            }
        }
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, BookShelf bookShelf) {
        boolean bl = true;
        if (bookShelf.getTxt() != null) {
            BookFile bookFile = bookShelf.getTxt();
            if (bookFile.isTop()) {
                bl = false;
            }
            bookFile.setTop(bl);
            bookFile.save();
        } else if (bookShelf.getBookRecord() != null) {
            BookReadRecord bookReadRecord = bookShelf.getBookRecord();
            if (bookReadRecord.isTop()) {
                bl = false;
            }
            bookReadRecord.setTop(bl);
            bookReadRecord.save();
        }
        homeShelfFragment.k();
    }

    static /* synthetic */ void b(final HomeShelfFragment homeShelfFragment, final ShelfMsg shelfMsg) {
        List list = homeShelfFragment.j.f();
        if (list == null || list.isEmpty()) {
            return;
        }
        if (shelfMsg != null && shelfMsg.postLink != null && (shelfMsg.postLink.startsWith("link") || shelfMsg.postLink.startsWith("game"))) {
            homeShelfFragment.e.removeHeaderView(homeShelfFragment.g);
            return;
        }
        homeShelfFragment.e.removeHeaderView(homeShelfFragment.g);
        homeShelfFragment.e.addHeaderView(homeShelfFragment.g);
        homeShelfFragment.g.setVisibility(View.VISIBLE);
        TextView textView = (TextView) homeShelfFragment.g.findViewById(R.id.title);
        assert shelfMsg != null;
        final InsideLink insideLink = getInsideLink(shelfMsg.postLink);
        textView.setText(insideLink.getLabel());
        if (shelfMsg.highlight) {
            textView.setTextColor(homeShelfFragment.getActivity().getResources().getColor(R.color.shelf_msg_highlight));
        } else {
            textView.setTextColor(homeShelfFragment.getActivity().getResources().getColor(R.color.shelf_msg_normal));
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!shelfMsg.login || CommonUtil.checkLogin(homeShelfFragment.getActivity()) != null) {
                    homeShelfFragment.startActivity(new InsideLinkIntent(homeShelfFragment.getActivity(), insideLink));
                }
            }
        });
    }

    private static InsideLink getInsideLink(String string) {
        if (string == null || string.length() < 4) {
            throw new IllegalArgumentException(string + " must have length above 4");
        }
        Matcher matcher = Pattern.compile("^\\[\\[(.+?):(.+?) (.+)\\]\\]$").matcher(string);
        if (!matcher.find()) {
            throw new IllegalArgumentException(string + " is in wrong format");
        }
        return InsideLinkFactory.create(matcher.group(1), matcher.group(2), matcher.group(3));
    }

    static /* synthetic */ void c(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        new BookDownloadManager(homeShelfFragment.getActivity()).startDownload(bookReadRecord);
    }

    static /* synthetic */ void c(final HomeShelfFragment homeShelfFragment, final BookShelf bookShelf) {
        View view = homeShelfFragment.getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, (ViewGroup) homeShelfFragment.getActivity().getWindow().getDecorView(), false);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
        int n2 = bookShelf.getType();
        checkBox.setVisibility(n2 == 0 ? View.VISIBLE : View.GONE);
        new BaseDialog.Builder(homeShelfFragment.getActivity()).setView(view).setPositiveButton("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                HomeShelfFragment.a(homeShelfFragment, bookShelf, checkBox.isChecked());
            }
        }).setNegativeButton("取消", null).create().show();
    }

    static /* synthetic */ void f(final HomeShelfFragment homeShelfFragment) {
        if (!homeShelfFragment.b) {
            homeShelfFragment.k();
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
                return ApiServiceProvider.getApiService().a(arrayList);
            }

            @Override
            protected void onPostExecute(List<BookUpdate> bookUpdates) {
                super.onPostExecute(bookUpdates);
                if (homeShelfFragment.getActivity() != null) {
                    HomeShelfFragment.g(homeShelfFragment);
                    if (bookUpdates != null && !bookUpdates.isEmpty()) {
                        HomeShelfFragment.a(homeShelfFragment, bookUpdates, this.a);
                    } else {
                        if (HomeShelfFragment.i(homeShelfFragment) == 0) {
                            ToastUtil.showToast(homeShelfFragment.getActivity(), R.string.network_failed);
                        }
                    }
                }
            }
        }.b();
    }

    static /* synthetic */ void g(HomeShelfFragment homeShelfFragment) {
        if (homeShelfFragment.d != null) {
            homeShelfFragment.d.onRefreshComplete();
        }
    }

    static /* synthetic */ int i(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.v;
    }

    static /* synthetic */ ListView j(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.e;
    }

    static /* synthetic */ void l(HomeShelfFragment homeShelfFragment) {
        homeShelfFragment.k();
    }

    static /* synthetic */ View m(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.g;
    }

    static /* synthetic */ ShelfMsg n(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.i;
    }

    private void a(final BookFile bookFile) {
        TxtFileObject.delete(bookFile);
        this.k();
        new Thread() {
            @Override
            public void run() {
                String string = TocManager.getFileName(bookFile.getFilePath());
                TempUtil.deleteFile(CachePathConst.TextToc + string);
            }
        }.start();
    }

    private void a(BookReadRecord bookReadRecord) {
        TempUtil.t(bookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(bookReadRecord);
        this.k();
        TempUtil.w(bookReadRecord.getBookId());
    }

    private void a(BookShelf bookShelf, boolean bl) {
        if (bookShelf.getBookRecord() != null) {
            BookReadRecord bookReadRecord = bookShelf.getBookRecord();
            String string = bookReadRecord.getBookId();
            BookReadRecord.delete(bookReadRecord);
            this.a(string);
            if (bl) {
                this.b(string);
            }
        } else {
            if (bookShelf.getTxt() != null) {
                this.a(bookShelf.getTxt());
            }
        }
    }

    private void a(String string) {
        this.k();
        TempUtil.t(string);
        BusProvider.getInstance().post(new BookShelfRefreshEvent());
        TempUtil.v(string);
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
                this.e.setVisibility(View.VISIBLE);
                return;
            }
            case 3:
        }
        this.f.setVisibility(View.VISIBLE);
        this.e.setVisibility(View.GONE);
    }

    private void b(final String string) {
        new Thread() {

            @Override
            public void run() {
                TempUtil.deleteDir(CachePathConst.Chapter + File.separator + string);
            }
        }.start();
    }

    private void i() {
        List<BookShelf> list;
        long l2 = new Date().getTime();
        if (l2 - this.B < 500) {
            this.B = l2;
            return;
        }
        this.B = l2;
        list = this.j();
        if (list != null) {
            this.j.a(list);
            if (!list.isEmpty()) {
                this.b(1);
                if (this.b) {
                    this.d.setRefreshing();
                }
                this.b = false;
                new BaseAsyncTask<Void, Void, ShelfMsgRoot>() {

                    @Override
                    protected ShelfMsgRoot doInBackground(Void... params) {
                        ApiServiceProvider.getInstance();
                        return ApiServiceProvider.getApiService().l();
                    }

                    @Override
                    protected void onPostExecute(ShelfMsgRoot shelfMsgRoot) {
                        super.onPostExecute(shelfMsgRoot);
                        if (HomeShelfFragment.this.getActivity() == null) return;
                        if (shelfMsgRoot == null || !shelfMsgRoot.ok || shelfMsgRoot.message == null) {
                            HomeShelfFragment.j(HomeShelfFragment.this).removeHeaderView(HomeShelfFragment.m(HomeShelfFragment.this));
                            HomeShelfFragment.a(HomeShelfFragment.this).notifyDataSetChanged();
                            return;
                        }
                        HomeShelfFragment.a(HomeShelfFragment.this, shelfMsgRoot.message);
                        HomeShelfFragment.b(HomeShelfFragment.this, HomeShelfFragment.n(HomeShelfFragment.this));
                    }
                }.b();
                return;
            }
            if (CommonUtil.isFirstLaunch(this.getActivity())) {
                if (!CommonUtil.isLogined() && !this.A) {
                    TempUtil.a(this.getActivity());
                    return;
                }
                this.z = true;
            }
            this.b(3);
            return;
        }
        ToastUtil.showShortToast(this.getActivity(), "载入书架失败，请重试");
    }

    private List<BookShelf> j() {
        List<BookShelf> v6 = new ArrayList<>();
        final int v7 = TempUtil.getIntPref(getActivity(), "key_shelf_sort", 1);
        List<BookReadRecord> v1;
        if (v7 != 0) {
            v1 = BookReadRecord.getAllWithTopNoFeedByRead();
        } else {
            v1 = BookReadRecord.getAllWithTopNoFeed();
        }
        List<BookReadRecord> v8 = BookReadRecord.getAllFeeding();
        long v2 = 0x0;
        if (!v8.isEmpty()) {
            v2 = TempUtil.c(getActivity(), "FeedUpdateTime", System.currentTimeMillis());
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
                if (HomeShelfFragment.a(lhs, v7) == HomeShelfFragment.a(rhs, v7)) {
                    return 0;
                }
                if (HomeShelfFragment.a(lhs, v7) > HomeShelfFragment.a(rhs, v7)) return -1;
                return 1;
            }
        });
//        :goto_5
        if (TempUtil.getIntPref(getActivity(), "unsync_bookrecord_first", 0) != 0) {
            return v6;
        }
        String[] v3 = new String[v1.size()];
        for (int v21 = 0; v21 < v1.size(); v21++) {
            v3[v21] = v1.get(v21).getBookId();
        }
        TempUtil.a(v3);
        String[] v22 = new String[v8.size()];
        for (int v11 = 0; v11 < v8.size(); v11++) {
            v22[v11] = v8.get(v11).getBookId();
        }
        TempUtil.b(v22);
        TempUtil.b(getActivity(), "unsync_bookrecord_first", 1);
        return v6;
    }

    private void k() {
        if (this.getActivity() != null) {
            this.i();
        }
    }

    public final boolean c() {
        return this.j.a();
    }

    public final void d() {
        this.e.removeHeaderView(this.g);
        this.w.setVisibility(View.VISIBLE);
        this.e.removeFooterView(this.h);
        this.e.addFooterView(this.h);
        this.d.setMode(PullToRefreshBase.Mode.DISABLED);
        this.d.setPullToRefreshOverScrollEnabled(false);
        this.e.setOnItemLongClickListener(null);
        this.j.b();
    }

    public final void e() {
        if (this.g != null && this.i != null && this.i.postLink != null && (!this.i.postLink.startsWith("link") || this.i.postLink.startsWith("game"))) {
            this.e.removeHeaderView(this.g);
            this.e.addHeaderView(this.g);
        }
        this.w.setVisibility(View.GONE);
        this.e.removeFooterView(this.h);
        this.d.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
        this.d.setPullToRefreshOverScrollEnabled(true);
        this.e.setOnItemLongClickListener(this.D);
        this.j.c();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Subscribe
    public void onBookAdded(BookAddedEvent c2) {
        if (c2.isLocal()) {
            this.k();
        }
        TempUtil.r(c2.getBookId());
    }

    @Subscribe
    public void onBookRead(BookReadEvent g2) {
        this.k();
    }

    @Subscribe
    public void onBookRemoved(BookRemovedEvent h2) {
        this.a(h2.getBookId());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BusProvider.getInstance().register(this);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.i(a, "HomeShelfFragment onCreateView");
//        60.0f * ((float) this.getActivity().getResources().getDisplayMetrics().densityDpi / 160.0f);
        View c = layoutInflater.inflate(R.layout.fragment_home_shelf, viewGroup, false);
        this.d = (PullToRefreshListView) c.findViewById(R.id.home_shelf_ptr);
        this.e = this.d.getRefreshableView();
        this.d.setOnScrollListener(this);
        this.f = c.findViewById(R.id.home_shelf_empty);
        this.h = LayoutInflater.from(this.getActivity()).inflate(R.layout.layout_shelf_footer, this.e, false);
        c.findViewById(R.id.add_new_book).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((HomeActivity) HomeShelfFragment.this.getActivity()).g();
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
                if (HomeShelfFragment.a(HomeShelfFragment.this) != null) {
                    HomeShelfFragment.a(HomeShelfFragment.this).d();
                }
            }
        });
        x.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (HomeShelfFragment.a(HomeShelfFragment.this) == null) return;
                List<BookShelf> list = HomeShelfFragment.a(HomeShelfFragment.this).e();
                if (list == null || list.size() == 0) {
                    ToastUtil.showToast((Context) HomeShelfFragment.this.getActivity(), "你没有选择要删除的书哦");
                    return;
                }
                HomeShelfFragment.a(HomeShelfFragment.this, list);
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
        if (TempUtil.i()) {
            this.e.setFooterDividersEnabled(false);
        }
        View view = LayoutInflater.from(this.getActivity()).inflate(R.layout.ptr_list_footer_empty_view, (ViewGroup) getActivity().getWindow().getDecorView(), false);
        this.e.addFooterView(view);
        TempUtil.a(this.getActivity(), this.e);
        this.g = LayoutInflater.from(this.getActivity()).inflate(R.layout.bookshelf_header_msg, this.e, false);
        this.g.setVisibility(View.GONE);
        this.j = new HomeShelfAdapter(this.getActivity());
        this.e.setAdapter(this.j);
        this.e.setOnItemClickListener(this.C);
        this.e.setOnItemLongClickListener(this.D);
        this.j.a(x, y);
        this.i();
        this.e.getHeight();
        Log.i(a, "" + this.e.getHeight() + " ," + this.e.getMeasuredHeight());
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
            this.j.notifyDataSetChanged();
        }
    }

    @Subscribe
    public void onFeedAdded(FeedAddedEvent l2) {
        this.a(l2.getBookReadRecord());
    }

    @Subscribe
    public void onFeedRemoved(FeedRemovedEvent n2) {
        this.k();
        TempUtil.r(n2.getBookId());
        TempUtil.x(n2.getBookId());
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
                    bookGenderRecommend = ApiServiceProvider.getApiService().ac(var1[0]);
                    if (!bookGenderRecommend.isOk()) return bookGenderRecommend;
                    BookGenderRecommend.RecommendBook[] recommendBooks = bookGenderRecommend.getBooks();
                    n = recommendBooks.length;
                    while (n2 < n) {
                        BookGenderRecommend.RecommendBook bookGenderRecommend$RecommendBook = recommendBooks[n2];
                        BookReadRecord.create(bookGenderRecommend$RecommendBook);
                        TempUtil.u(bookGenderRecommend$RecommendBook.get_id());
                        ++n2;
                    }
                    return bookGenderRecommend;
                }

                @Override
                public void a(BookGenderRecommend bookGenderRecommend) {
                    if (bookGenderRecommend != null && bookGenderRecommend.isOk()) {
                        HomeShelfFragment.l(HomeShelfFragment.this);
                        return;
                    }
                    HomeShelfFragment.b(HomeShelfFragment.this, 3);
                }
            };
            if (n2 == 1) {
                bookGenderRecommendc.b("male");
            } else if (n2 == 2) {
                bookGenderRecommendc.b("female");
            }
        }
    }
    public void onHideAdEvent() {
        this.k();
        if (this.g != null && this.i != null && this.i.postLink != null && (this.i.postLink.startsWith("link") || this.i.postLink.startsWith("game"))) {
            this.e.removeHeaderView(this.g);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.j.a()) {
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
                TempUtil.a(this.getActivity());
            }
            return;
        }
        this.k();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setUserVisibleHint(boolean bl) {
        super.setUserVisibleHint(bl);
        if (!bl) {
            if (this.j.a()) {
                this.e();
            }
        }
    }
}
