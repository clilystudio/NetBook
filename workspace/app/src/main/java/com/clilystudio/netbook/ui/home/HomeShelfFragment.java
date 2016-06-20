package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.activeandroid.util.SQLiteUtils;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.F;
import com.clilystudio.netbook.event.b;
import com.clilystudio.netbook.event.c;
import com.clilystudio.netbook.event.g;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.l;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.reader.txt.U;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.ui.user.RemoveAdActivity;
import com.clilystudio.netbook.util.FeedIntroDialog;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.CoverLoadingView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class HomeShelfFragment extends HomeFragment implements AbsListView.OnScrollListener {
    private static final String a = HomeShelfFragment.class.getSimpleName();
    private boolean A = false;
    private long B = 0;
    private AdapterView.OnItemClickListener C;
    private AdapterView.OnItemLongClickListener D;
    private IXmPlayerStatusListener E;
    private boolean b = true;
    private View c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private View h;
    private ShelfMsg i;
    private HomeShelfAdapter j;
    private int k = 0;
    private RelativeLayout l;
    private CoverLoadingView m;
    private TextView n;
    private TextView o;
    private ImageView p;
    private CommonRequest q;
    private Album r;
    private int s;
    private int t;
    private as u = as.a();
    private int v = 0;
    private RelativeLayout w;
    private Button x;
    private Button y;
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
                    default: {
                        return;
                    }
                    case 0: {
                        BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                        new com.clilystudio.netbook.util.m(HomeShelfFragment.this.getActivity()).a(bookReadRecord);
                        if (bookReadRecord.isUnread()) {
                            bookReadRecord.setUnread(false);
                            bookReadRecord.save();
                            HomeShelfFragment.a(HomeShelfFragment.this).notifyDataSetChanged();
                        }
                        if (!bookReadRecord.isRecommended()) return;
                        {
                            MiStatInterface.recordCountEvent("book_recommend_read_click", bookReadRecord.getTitle());
                            return;
                        }
                    }
                    case 2: {
                        BookFile bookFile = bookShelf.getTxt();
                        if (new File(bookFile.getFilePath()).exists()) {
                            String string = bookFile.getPathAndName();
                            Intent intent = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
                            intent.putExtra("file_name", string);
                            HomeShelfFragment.this.startActivity(intent);
                            return;
                        }
                        com.clilystudio.netbook.util.e.a((Activity) HomeShelfFragment.this.getActivity(), "书籍不存在");
                        TxtFileObject.delete(bookFile);
                        com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.A());
                        return;
                    }
                    case 1: {
                        Advert advert = bookShelf.getAdvert();
                        advert.processClick(view);
                        if (advert.isRead()) {
                            return;
                        }
                        HomeShelfFragment.a(HomeShelfFragment.this, advert);
                        HomeShelfFragment.a(HomeShelfFragment.this).notifyDataSetChanged();
                        return;
                    }
                    case 3: {
                        Intent intent = com.clilystudio.netbook.hpay100.a.a.l(HomeShelfFragment.this.getActivity(), "feed_intro") ? new Intent(HomeShelfFragment.this.getActivity(), FeedIntroActivity.class) : new Intent(HomeShelfFragment.this.getActivity(), FeedListActivity.class);
                        HomeShelfFragment.this.startActivity(intent);
                        return;
                    }
                    case 4:
                }
                AudioRecord audioRecord = bookShelf.getAlbum();
                HomeShelfFragment.a(HomeShelfFragment.this, audioRecord);
                if (!audioRecord.isUpdateReaded()) {
                    AudioRecord.updateRecordRead(audioRecord.getBookId(), true);
                }
                AudioRecord.updateLastRead(audioRecord.getBookId());
                HomeShelfFragment.c(HomeShelfFragment.this);
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
        this.E = new x(this);
    }

    static /* synthetic */ long a(HomeShelfFragment homeShelfFragment, BookShelf bookShelf, int n2) {
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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, AudioRecord audioRecord) {
        Album album = audioRecord.convert2Album();
        int n2 = audioRecord.getTrack();
        e.a((Context) homeShelfFragment.getActivity(), (long) album.getId(), (int) n2);
        homeShelfFragment.s = n2;
        as.a(homeShelfFragment.E);
        homeShelfFragment.g();
        String string = album.getCoverUrlSmall();
        String string2 = album.getAlbumTitle();
        homeShelfFragment.m.setImageUrl(string);
        homeShelfFragment.n.setText(string2);
        e.a((String) string2);
        new com.clilystudio.netbook.util.h().execute((Object[]) new String[]{string});
        homeShelfFragment.r = album;
        homeShelfFragment.t = n2 / 100;
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("album_id", "" + album.getId());
        hashMap.put("sort", "asc");
        hashMap.put("page", "" + (1 + homeShelfFragment.t));
        try {
            homeShelfFragment.q.setDefaultPagesize(100);
        } catch (XimalayaException var11_7) {
            var11_7.printStackTrace();
        }
        CommonRequest.getTracks(hashMap, new D(homeShelfFragment, n2));
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        if (bookReadRecord != null) {
            homeShelfFragment.startActivity(BookInfoActivity.a(homeShelfFragment.getActivity(), bookReadRecord.getBookId()));
        }
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, Advert advert) {
        advert.setRead(true);
        com.clilystudio.netbook.util.c.a().a(advert);
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookShelf bookShelf) {
        homeShelfFragment.a(bookShelf, true);
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, BookShelf bookShelf, boolean bl) {
        homeShelfFragment.a(bookShelf, bl);
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, Track track) {
        homeShelfFragment.a(track);
    }

    static /* synthetic */ void a(final HomeShelfFragment homeShelfFragment, final List list) {
        View view = homeShelfFragment.getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, null, false);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
        new uk.me.lewisdeane.ldialogs.h(homeShelfFragment.getActivity()).a(view).a("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                HomeShelfFragment.a(homeShelfFragment, list, checkBox.isChecked());
                homeShelfFragment.e();
            }
        }).b("\u53d6\u6d88", null).a().show();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    static /* synthetic */ void a(HomeShelfFragment var0, List var1_1, List var2_2) {
        var3_3 = false;
        var4_4 = false;
        var5_5 = a.a((Context) var0.getActivity(), "feed_chapter_count", 50);
        var6_6 = var2_2.size();
        var8_8 = var6_6 <= (var7_7 = var1_1.size()) ? var6_6 : var7_7;
        var9_9 = 0;
        do {
            if (var9_9 >= var8_8)**GOTO lbl29
            var10_10 = (BookReadRecord) var2_2.get(var9_9);
            var11_11 = (BookUpdate) var1_1.get(var9_9);
            if (var10_10 == null || var11_11 == null)**GOTO lbl42
            var13_13 = var11_11.getChaptersCount();
            var14_14 = var10_10.getUpdated().getTime() < var11_11.getUpdated().getTime();
            if (var14_14) {
                var10_10.setUpdated(var11_11.getUpdated());
                var10_10.setLastChapter(var11_11.getLastChapter());
                var10_10.setUnread(true);
                var10_10.setChapterCount(var13_13);
                var10_10.save();
                var15_15 = true;
            } else {
                var15_15 = var3_3;
            }
            if (!var10_10.isFeeding() || (var16_16 = var10_10.isFeedFat()) == (var17_17 = var13_13 - var10_10.getChapterCountAtFeed() >= var5_5))**GOTO lbl39
            var10_10.setFeedFat(var17_17);
            var10_10.save();
            var3_3 = var15_15;
            var12_12 = true;
            **GOTO lbl43
            lbl29:
            // 1 sources:
            if (var3_3) {
                var0.k();
                e.a((Activity) var0.getActivity(), (int) R.string.refurbish_changed);
                return;
            }
            if (var4_4) {
                var0.k();
                return;
            }
            var0.j.notifyDataSetChanged();
            e.a((Activity) var0.getActivity(), (int) R.string.refurbish_no_change);
            return;
            lbl39:
            // 1 sources:
            var3_3 = var15_15;
            var12_12 = var4_4;
            **GOTO lbl43
            lbl42:
            // 1 sources:
            var12_12 = var4_4;
            lbl43:
            // 3 sources:
            ++var9_9;
            var4_4 = var12_12;
        } while (true);
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, List list, boolean bl) {
        for (BookShelf bookShelf : list) {
            if (bookShelf.getBookRecord() != null) {
                BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                String string = bookReadRecord.getBookId();
                BookReadRecord.delete(bookReadRecord);
                a.t(string);
                if (bl) {
                    homeShelfFragment.b(string);
                }
                homeShelfFragment.a(string, bookReadRecord.getTitle(), bookReadRecord.isRecommended());
                a.v(bookShelf.getBookRecord().getBookId());
                continue;
            }
            if (bookShelf.getTxt() != null) {
                homeShelfFragment.a(bookShelf.getTxt());
                continue;
            }
            if (bookShelf.getType() == 1) {
                homeShelfFragment.a(bookShelf.getAdIndex());
                continue;
            }
            if (bookShelf.getType() != 4) continue;
            bookShelf.getAlbum().delete();
            homeShelfFragment.k();
        }
        homeShelfFragment.k();
        i.a().c(new BookShelfRefreshEvent());
    }

    static /* synthetic */ void a(HomeShelfFragment homeShelfFragment, boolean bl) {
        homeShelfFragment.a(bl);
    }

    static /* synthetic */ void a(final HomeShelfFragment homeShelfFragment, CharSequence[] arrcharSequence, final BookShelf bookShelf) {
        if (arrcharSequence == null || bookShelf == null) {
            return;
        }
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(homeShelfFragment.getActivity());
        h2.d = bookShelf.getTitle();
        h2.a(arrcharSequence, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                switch (bookShelf.getType()) {
                    case 1: {
                        if (which == 0) {
                            HomeShelfFragment.a(homeShelfFragment, bookShelf);
                            return;
                        }
                        if (which != 1) return;
                        {
                            HomeShelfFragment.k(homeShelfFragment);
                            return;
                        }
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
                    default: {
                        return;
                    }
                    case 4:
                }
                if (which == 0) {
                    HomeShelfFragment.b(homeShelfFragment, bookShelf);
                    return;
                }
                if (which == 1) {
                    HomeShelfFragment.b(homeShelfFragment, bookShelf.getAlbum());
                    return;
                }
                if (which == 2) {
                    HomeShelfFragment.c(homeShelfFragment, bookShelf);
                    return;
                }
                if (which != 3) return;
                {
                    homeShelfFragment.d();
                    return;
                }
            }
        }).b();
    }

    private static boolean a(Context context, int n2) {
        long l2 = a.a(context, "DELETE_SHELF_AD_KEY" + n2, 0);
        if (new Date().getTime() - l2 > 86400000) {
            return true;
        }
        return false;
    }

    private static boolean a(List<BookShelf> list, int n2) {
        if (n2 >= list.size()) {
            return false;
        }
        if (n2 == 0 && !list.isEmpty() && list.get(0).getType() != 1) {
            return true;
        }
        if (n2 > 0 && list.size() >= 5 && list.get(0).getType() == 1 && list.get(4).getType() != 1) {
            return true;
        }
        if (n2 > 0 && list.size() >= 4 && list.get(0).getType() != 1 && list.get(4).getType() != 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int b(List<BookShelf> list) {
        int n2 = 0;
        List<BookFile> list2 = TxtFileObject.getTxtFiles();
        if (list2 == null) return 0;
        if (list2.isEmpty()) {
            return 0;
        }
        ArrayList<BookShelf> arrayList = new ArrayList<BookShelf>();
        ArrayList<BookShelf> arrayList2 = new ArrayList<BookShelf>();
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

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment) {
        if (as.c()) {
            as.h();
            return;
        }
        homeShelfFragment.u.d();
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, int n2) {
        homeShelfFragment.b(3);
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, AudioRecord audioRecord) {
    }

    static /* synthetic */ void b(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        if (bookReadRecord != null) {
            long l2 = System.currentTimeMillis();
            a.d((Context) homeShelfFragment.getActivity(), "FeedUpdateTime", l2);
            bookReadRecord.setFeeding(true);
            bookReadRecord.setChapterCountAtFeed(bookReadRecord.getChapterCount());
            bookReadRecord.setLastActionTime(new Date().getTime());
            bookReadRecord.save();
            homeShelfFragment.a(bookReadRecord, true);
            if (a.a((Context) homeShelfFragment.getActivity(), "feed_intro_dialog", true)) {
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
                a.b((Context) homeShelfFragment.getActivity(), "feed_intro_dialog", false);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
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
        } else if (bookShelf.getAlbum() != null) {
            AudioRecord audioRecord = bookShelf.getAlbum();
            if (audioRecord.isTop()) {
                bl = false;
            }
            audioRecord.setTop(bl);
            audioRecord.save();
        }
        homeShelfFragment.k();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void b(final HomeShelfFragment homeShelfFragment, final ShelfMsg shelfMsg) {
        List list = homeShelfFragment.j.f();
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!am.r((Context) homeShelfFragment.getActivity()) && shelfMsg != null && shelfMsg.postLink != null && (shelfMsg.postLink.startsWith("link") || shelfMsg.postLink.startsWith("game"))) {
            homeShelfFragment.e.removeHeaderView(homeShelfFragment.g);
            return;
        }
        homeShelfFragment.e.removeHeaderView(homeShelfFragment.g);
        homeShelfFragment.e.addHeaderView(homeShelfFragment.g);
        homeShelfFragment.g.setVisibility(View.VISIBLE);
        TextView textView = (TextView) homeShelfFragment.g.findViewById(R.id.title);
        new com.clilystudio.netbook.util.a.a();
        final InsideLink insideLink = com.clilystudio.netbook.util.a.a.a(shelfMsg.postLink);
        textView.setText(insideLink.getLabel());
        if (shelfMsg.highlight) {
            textView.setTextColor(homeShelfFragment.getActivity().getResources().getColor(R.color.shelf_msg_highlight));
        } else {
            textView.setTextColor(homeShelfFragment.getActivity().getResources().getColor(R.color.shelf_msg_normal));
        }
        new UmengGameTracer(homeShelfFragment.getActivity(), UmengGameTracer.From.Notification).a(shelfMsg._id);
//        new w(homeShelfFragment, shelfMsg, insideLink)
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (shelfMsg.login && am.a(homeShelfFragment.getActivity()) == null) {
                    return;
                }
                try {
                    homeShelfFragment.startActivity(new InsideLinkIntent(homeShelfFragment.getActivity(), insideLink));
                    MiStatInterface.recordCountEvent("shelf_msg_click", insideLink.getLabel());
                    return;
                } catch (Exception var2_2) {
                    var2_2.printStackTrace();
                    return;
                }
            }
        });
    }

    private static boolean b(List<BookShelf> list, int n2) {
        if (n2 >= list.size()) {
            return false;
        }
        if (n2 == 0 && !list.isEmpty() && list.get(0).getType() == 1) {
            return true;
        }
        if (n2 > 0 && list.size() >= 5 && list.get(0).getType() == 1 && list.get(4).getType() == 1) {
            return true;
        }
        if (n2 > 0 && list.size() >= 4 && list.get(0).getType() != 1 && list.get(4).getType() == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void c(HomeShelfFragment homeShelfFragment) {
     }

    static /* synthetic */ void c(HomeShelfFragment homeShelfFragment, BookReadRecord bookReadRecord) {
        new com.clilystudio.netbook.reader.dl.a(homeShelfFragment.getActivity()).a(bookReadRecord);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void c(final HomeShelfFragment homeShelfFragment, final BookShelf bookShelf) {
        View view = homeShelfFragment.getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, null, false);
        final CheckBox checkBox = (CheckBox) view.findViewById(R.id.remove_shelf_cache);
        int n2 = bookShelf.getType();
        int n3 = 0;
        if (n2 != 0) {
            n3 = 8;
        }
        checkBox.setVisibility(n3);
        new uk.me.lewisdeane.ldialogs.h(homeShelfFragment.getActivity()).a(view).a("确定", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                HomeShelfFragment.a(homeShelfFragment, bookShelf, checkBox.isChecked());
            }
        }).b("\u53d6\u6d88", null).a().show();
    }

    static /* synthetic */ as d(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.u;
    }

    static /* synthetic */ void e(HomeShelfFragment homeShelfFragment) {
        if (am.q((Context) homeShelfFragment.getActivity())) {
            new H(homeShelfFragment, 0).b(new Void[0]);
        }
    }

    static /* synthetic */ String f() {
        return a;
    }

    static /* synthetic */ void f(HomeShelfFragment homeShelfFragment) {
        if (!homeShelfFragment.b) {
            homeShelfFragment.k();
        }
        new K(homeShelfFragment, 0).b(new Void[0]);
        if (AudioRecord.findAll().size() > 0) {
            List<AudioRecord> list = AudioRecord.findAll();
            StringBuilder stringBuilder = new StringBuilder();
            for (int j = 0; j < list.size(); ++j) {
                stringBuilder.append(list.get(j).getBookId());
                stringBuilder.append(",");
            }
            stringBuilder.deleteCharAt(-1 + stringBuilder.length());
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("ids", stringBuilder.toString());
            CommonRequest.getBatch(hashMap, new o(homeShelfFragment));
        }
    }

    static /* synthetic */ void g(HomeShelfFragment homeShelfFragment) {
        if (homeShelfFragment.d != null) {
            homeShelfFragment.d.n();
        }
    }

    static /* synthetic */ void h(HomeShelfFragment homeShelfFragment) {
        homeShelfFragment.i();
    }

    static /* synthetic */ int i(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.v;
    }

    static /* synthetic */ ListView j(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.e;
    }

    static /* synthetic */ void k(HomeShelfFragment homeShelfFragment) {
        homeShelfFragment.startActivity(new Intent(homeShelfFragment.getActivity(), RemoveAdActivity.class));
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

    static /* synthetic */ void o(HomeShelfFragment homeShelfFragment) {
        homeShelfFragment.h();
    }

    static /* synthetic */ TextView p(HomeShelfFragment homeShelfFragment) {
        return homeShelfFragment.o;
    }

    private void a(int n2) {
        com.clilystudio.netbook.util.c.a().b();
        a.b((Context) this.getActivity(), "DELETE_SHELF_AD_KEY" + n2, new Date().getTime());
        this.k();
        MiStatInterface.recordCountEvent("ad_delete_shelf", null);
    }

    private void a(final BookFile bookFile) {
        TxtFileObject.delete(bookFile);
        this.k();
        new Thread() {
            @Override
            public void run() {
                String string = U.b(bookFile.getFilePath());
                com.clilystudio.netbook.hpay100.a.a.F(com.clilystudio.netbook.c.d + string);
            }
        }.start();
    }

    private void a(BookReadRecord bookReadRecord, boolean bl) {
        a.t(bookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(bookReadRecord);
        if (bl) {
            this.k();
            a.w(bookReadRecord.getBookId());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(BookShelf bookShelf, boolean bl) {
        if (bookShelf.getBookRecord() != null) {
            BookReadRecord bookReadRecord = bookShelf.getBookRecord();
            String string = bookReadRecord.getBookId();
            BookReadRecord.delete(bookReadRecord);
            this.a(string);
            if (bl) {
                this.b(string);
            }
            this.a(string, bookReadRecord.getTitle(), bookReadRecord.isRecommended());
            return;
        } else {
            if (bookShelf.getTxt() != null) {
                this.a(bookShelf.getTxt());
                return;
            }
            if (bookShelf.getType() == 1) {
                this.a(bookShelf.getAdIndex());
                return;
            }
            if (bookShelf.getType() != 4) return;
            {
                bookShelf.getAlbum().delete();
                this.k();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Track track) {
        SubordinatedAlbum subordinatedAlbum = track.getAlbum();
        if (subordinatedAlbum != null) {
            e.a((String) subordinatedAlbum.getAlbumTitle());
            this.n.setText(subordinatedAlbum.getAlbumTitle());
        } else {
            e.a((String) track.getTrackTitle());
            this.n.setText(track.getTrackTitle());
        }
        if (TextUtils.isEmpty(track.getCoverUrlSmall())) {
            this.m.setImageResource(R.drawable.cover_normal);
            return;
        }
        this.m.setImageUrl(track.getCoverUrlSmall());
    }

    private void a(String string) {
        this.k();
        a.t(string);
        i.a().c(new BookShelfRefreshEvent());
        a.v(string);
    }

    private void a(String string, String string2, boolean bl) {
        if (bl) {
            MiStatInterface.recordCountEvent("book_recommend_delete_click", string2);
        }
        com.a.a.a.b(this.getActivity(), string, a.p(this.getActivity()));
    }

    private void a(List<BookShelf> list) {
        if (!list.isEmpty() && am.q((Context) this.getActivity())) {
            this.c(list, 0);
            if (a.F(this.getActivity())) {
                com.clilystudio.netbook.util.c.a().c();
                this.c(list, 4);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(List<BookShelf> list, int n2, Advert advert) {
        if (HomeShelfFragment.b(list, n2)) {
            BookShelf bookShelf = list.get(n2);
            bookShelf.setAdvert(advert);
            bookShelf.setAdIndex(n2);
            this.j.notifyDataSetChanged();
        } else if (HomeShelfFragment.a(list, n2)) {
            BookShelf bookShelf = new BookShelf();
            bookShelf.setAdvert(advert);
            bookShelf.setAdIndex(n2);
            list.add(n2, bookShelf);
            this.j.notifyDataSetChanged();
        }
        String string = n2 > 0 ? "shelf_five" : "shelf_top";
        advert.setPosition(string);
        advert.recordShow(this.getActivity());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void a(List<BookShelf> var1_1, List<BookReadRecord> var2_2) {
        var3_3 = new BookFeed();
        var4_4 = BookReadRecord.getAllFeedFat();
        var5_5 = var2_2.iterator();
        var6_6 = 0;
        do {
            if (!var5_5.hasNext())**GOTO lbl15
            var14_7 = var5_5.next();
            if (var14_7.lastActionTime == 0)**GOTO lbl30
            var15_8 = var14_7.lastActionTime;
            if (var6_6 == 0) {
                var6_6 = var15_8;
                continue;
            }
            if (var6_6 >= var15_8)**GOTO lbl30
            **GOTO lbl31
            lbl15:
            // 1 sources:
            if (var4_4.isEmpty()) {
                var3_3.setFat(false);
                var12_9 = this.getString(R.string.shelf_feed_title);
                var13_10 = new Object[]{var2_2.size()};
                var3_3.setTitle(String.format(var12_9, var13_10));
            } else {
                var3_3.setFat(true);
                var8_12 = this.getString(R.string.shelf_feed_fat_title);
                var9_13 = new Object[]{var4_4.get(0).getTitle()};
                var3_3.setTitle(String.format(var8_12, var9_13));
            }
            var10_11 = new BookShelf();
            var10_11.setBookFeed(var3_3);
            var3_3.setLastActionTime(var6_6);
            var1_1.add(var10_11);
            return;
            lbl30:
            // 2 sources:
            var15_8 = var6_6;
            lbl31:
            // 2 sources:
            var6_6 = var15_8;
        } while (true);
    }

    private void a(boolean bl) {
        if (bl) {
            this.p.setImageResource(R.drawable.audio_bar_pause);
            return;
        }
        this.p.setImageResource(R.drawable.ic_play_audiobook_button);
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
        new Thread(){

            @Override
            public void run() {
                 com.clilystudio.netbook.hpay100.a.a.E(com.clilystudio.netbook.c.b + File.separator + string);
            }
        }.start();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(List<BookShelf> list, int n2) {
        String string = n2 == 0 ? "top" : "bookshelf";
        String string2 = n2 == 0 ? "rate_zssq_advert_bookshelf_top" : "rate_zssq_advert_bookshelf_five";
        Advert advert = com.clilystudio.netbook.util.c.a().a(string);
        if (advert != null && HomeShelfFragment.a(this.getActivity(), n2) && a.w(this.getActivity(), string2)) {
            if (this.getActivity() != null) {
                new UmengGameTracer(this.getActivity(), UmengGameTracer.From.Bookshelf).a(advert.get_id());
            }
            advert.setType("promotion");
            this.a(list, n2, advert);
            return;
        } else {
            if (!a.A(this.getActivity()) || !a.t(this.getActivity())) return;
            {
                this.getActivity();
                if (!k.c() && !k.b()) {
                    return;
                }
                boolean bl = true;
                if (!bl) return;
                {
                    if (!HomeShelfFragment.a(this.getActivity(), n2)) return;
                    new com.clilystudio.netbook.util.adutil.n().a(this.getActivity(), string);
                    return;
                }
            }
        }
    }

    private void g() {
        this.l.setVisibility(View.VISIBLE);
        this.e.removeFooterView(this.h);
        this.e.addFooterView(this.h);
    }

    private void h() {
        this.g();
        this.a(true);
        this.a((Track) as.e());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void i() {
        List<BookShelf> list;
        long l2 = new Date().getTime();
        if (l2 - this.B < 500) {
            this.B = l2;
            return;
        }
        this.B = l2;
        try {
            List<BookShelf> list2;
            list = list2 = this.j();
        } catch (Exception var3_4) {
            if (var3_4.getMessage() != null && var3_4.getMessage().contains("not attached to Activity")) {
                MiStatInterface.recordException(new Throwable("HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity"));
                list = null;
            }
            MiStatInterface.recordException(new Throwable("HomeShelfFragment_loadShelf:" + var3_4.getMessage()));
            list = null;
        }
        if (list != null) {
            this.j.a(list);
            if (list != null && !list.isEmpty()) {
                this.b(1);
                if (this.b) {
                    this.d.setRefreshing();
                }
                this.b = false;
                new J(this, 0).b(new Void[0]);
                return;
            }
            if (am.p((Context) this.getActivity())) {
                if (!am.g() && !this.A) {
                    a.a(this.getActivity());
                    return;
                }
                this.z = true;
            }
            this.b(3);
            return;
        }
        e.a((Activity) this.getActivity(), (String) "\u8f7d\u5165\u4e66\u67b6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    private List<BookShelf> j() {
        block26:
        {
            block24:
            {
                block25:
                {
                    block23:
                    {
                        var1_1 = new ArrayList<BookShelf>();
                        var2_2 = a.a((Context) this.getActivity(), "key_shelf_sort", 1);
                        if (var2_2 != 0)**GOTO lbl29
                        var3_3 = BookReadRecord.getAllWithTopNoFeed();
                        lbl5:
                        // 2 sources:
                        while (!(var4_4 = BookReadRecord.getAllFeeding()).isEmpty()) {
                            var5_5 = true;
                            lbl7:
                            // 2 sources:
                            do {
                                var6_6 = 0;
                                if (var5_5) {
                                    var6_6 = a.c((Context) this.getActivity(), "FeedUpdateTime", System.currentTimeMillis());
                                }
                                var8_7 = var3_3.iterator();
                                var9_8 = false;
                                while (var8_7.hasNext()) {
                                    var24_9 = var8_7.next();
                                    var25_10 = var24_9.getUpdated().getTime();
                                    if (!var9_8 && var5_5 && var6_6 >= var25_10) {
                                        this.a(var1_1, var4_4);
                                        var9_8 = true;
                                    }
                                    var27_11 = new BookShelf();
                                    var27_11.setBookRecord(var24_9);
                                    if (var24_9.readTime != null) {
                                        var27_11.setLastRead(var24_9.readTime.getTime());
                                    }
                                    if (var24_9.getUpdated() != null) {
                                        var27_11.setLastUpdate(var24_9.getUpdated().getTime());
                                    }
                                    var1_1.add(var27_11);
                                }
                                break block23;
                                break;
                            } while (true);
                        }
                        **GOTO lbl31
                        lbl29:
                        // 1 sources:
                        var3_3 = BookReadRecord.getAllWithTopNoFeedByRead();
                        **GOTO lbl5
                        lbl31:
                        // 1 sources:
                        var5_5 = false;
                        **while (true)
                    }
                    this.v = HomeShelfFragment.b(var1_1);
                    if (!var9_8 && var5_5) {
                        this.a(var1_1, var4_4);
                    }
                    if ((var10_12 = OnlineConfigAgent.getInstance().getConfigParams(this.getActivity(), "delete_audio_on_shelf")) == null || !"1".equals(var10_12))**GOTO lbl47
                    var11_13 = true;
                    lbl39:
                    // 2 sources:
                    do {
                        var12_14 = AudioRecord.findAll().iterator();
                        lbl41:
                        // 4 sources:
                        if (!var12_14.hasNext()) break block24;
                        var21_15 = var12_14.next();
                        if (!var11_13) break block25;
                        var21_15.delete();
                        this.k();
                        **GOTO lbl41
                        break;
                    } while (true);
                    lbl47:
                    // 1 sources:
                    var11_13 = false;
                    **while (true)
                }
                var22_16 = new BookShelf();
                var22_16.setAlbum(var21_15);
                var22_16.setLastRead(var21_15.getLastRead());
                var22_16.setLastUpdate(var21_15.getLastUpdate());
                if (!var22_16.isTop())**GOTO lbl57
                var1_1.add(0, var22_16);
                **GOTO lbl41
                lbl57:
                // 1 sources:
                var1_1.add(var22_16);
                **GOTO lbl41
            }
            try {
                Collections.sort(var1_1, new G(this, var2_2));
            } catch (Exception var13_17) {
                MiStatInterface.recordException(new Throwable("HomeShelfFragment_createShelf:" + var13_17.getMessage()));
                **continue;
            }
            lbl62:
            // 2 sources:
            do {
                if (a.a((Context) this.getActivity(), "unsync_bookrecord_first", false)) break block26;
                var17_18 = new String[var3_3.size()];
                for (var18_19 = 0; var18_19 < var3_3.size(); ++var18_19) {
                    var17_18[var18_19] = var3_3.get(var18_19).getBookId();
                }
                break;
                {
                    continue;
                    break;
                }
                break;
            } while (true);
            try {
                a.a(var17_18);
                var19_20 = new String[var4_4.size()];
                for (var20_21 = 0; var20_21 < var4_4.size(); ++var20_21) {
                    var19_20[var20_21] = var4_4.get(var20_21).getBookId();
                }
            } catch (Exception var14_22) {
                MiStatInterface.recordException(new Throwable("HomeShelfFragment_createShelf:" + var14_22.getMessage()));
                if (!var14_22.getMessage().contains("no such table: BookSyncRecord"))**GOTO lbl95
                try {
                    new SQLiteUtils();
                    SQLiteUtils.execSql("CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);");
                    **GOTO lbl95
                } catch (Exception var16_23) {
                    MiStatInterface.recordException(new Throwable("HomeShelfFragment_createTableBookSyncRecord:" + var14_22.getMessage()));
                    **continue;
                }
            }
            {
                continue;
            }
            a.b(var19_20);
            a.b((Context) this.getActivity(), "unsync_bookrecord_first", true);
        }
        lbl95:
        // 4 sources:
        do {
            this.a(var1_1);
            return var1_1;
            break;
        } while (true);
    }

    private void k() {
        if (this.getActivity() != null) {
            this.i();
        }
    }

    @Override
    public final String a() {
        return "home_shelf";
    }

    public final boolean c() {
        return this.j.a();
    }

    public final void d() {
        MiStatInterface.recordCountEvent("home_shelf_bulk_operation", null);
        if (this.r != null) {
            this.l.setVisibility(View.GONE);
        }
        this.e.removeHeaderView(this.g);
        this.w.setVisibility(View.VISIBLE);
        this.e.removeFooterView(this.h);
        this.e.addFooterView(this.h);
        this.d.setPullToRefreshEnabled(false);
        this.d.setPullToRefreshOverScrollEnabled(false);
        this.e.setOnItemLongClickListener(null);
        this.j.b();
    }

    public final void e() {
        if (this.r != null) {
            this.l.setVisibility(View.VISIBLE);
        }
        if (am.r((Context) this.getActivity()) || this.g != null && this.i != null && this.i.postLink != null && (!this.i.postLink.startsWith("link") || this.i.postLink.startsWith("game"))) {
            this.e.removeHeaderView(this.g);
            this.e.addHeaderView(this.g);
        }
        this.w.setVisibility(View.GONE);
        this.e.removeFooterView(this.h);
        this.d.setPullToRefreshEnabled(true);
        this.d.setPullToRefreshOverScrollEnabled(true);
        this.e.setOnItemLongClickListener(this.D);
        this.j.c();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @com.squareup.a.l
    public void onAudioBookExitEvent(b b2) {
        this.a(false);
        this.l.setVisibility(View.GONE);
        this.e.removeFooterView(this.h);
        this.r = null;
    }

    @com.squareup.a.l
    public void onBookAdded(c c2) {
        if (c2.a()) {
            this.k();
        }
        a.r(c2.b());
        FragmentActivity fragmentActivity = this.getActivity();
        String string = c2.b();
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("uid", e.c((Context) fragmentActivity));
        com.a.a.a.a(fragmentActivity, string, 0.0, 1, hashMap);
    }

    @com.squareup.a.l
    public void onBookRead(g g2) {
        this.k();
    }

    @com.squareup.a.l
    public void onBookRemoved(h h2) {
        this.a(h2.b());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
        if (this.q == null) {
            this.q = as.b();
        }
        as.a(this.E);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.i(a, "HomeShelfFragment onCreateView");
        60.0f * ((float) this.getActivity().getResources().getDisplayMetrics().densityDpi / 160.0f);
        this.c = layoutInflater.inflate(R.layout.fragment_home_shelf, viewGroup, false);
        this.d = (PullToRefreshListView) this.c.findViewById(R.id.home_shelf_ptr);
        this.e = (ListView) this.d.h();
        this.d.setOnScrollListener(this);
        this.f = this.c.findViewById(R.id.home_shelf_empty);
        this.h = LayoutInflater.from(this.getActivity()).inflate(R.layout.layout_shelf_footer, (ViewGroup) this.e, false);
        this.c.findViewById(R.id.add_new_book).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((HomeActivity) HomeShelfFragment.this.getActivity()).g();
            }
        });
        this.w = (RelativeLayout) this.c.findViewById(R.id.delete_shelf_bar);
        this.w.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
        this.x = (Button) this.w.findViewById(R.id.delete);
        this.y = (Button) this.w.findViewById(R.id.select_all);
        this.y.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (HomeShelfFragment.a(HomeShelfFragment.this) != null) {
                    HomeShelfFragment.a(HomeShelfFragment.this).d();
                }
            }
        });
        this.x.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (HomeShelfFragment.a(HomeShelfFragment.this) == null) return;
                List<BookShelf> list = HomeShelfFragment.a(HomeShelfFragment.this).e();
                if (list == null || list.size() == 0) {
                    com.clilystudio.netbook.util.e.a((Context) HomeShelfFragment.this.getActivity(), (String) "\u4f60\u6ca1\u6709\u9009\u62e9\u8981\u5220\u9664\u7684\u4e66\u54e6");
                    return;
                }
                HomeShelfFragment.a(HomeShelfFragment.this, list);
            }
        });
        this.d.setOnRefreshListener(new E(this));
        if (a.i()) {
            this.e.setFooterDividersEnabled(false);
        }
        View view = LayoutInflater.from(this.getActivity()).inflate(R.layout.ptr_list_footer_empty_view, null);
        this.e.addFooterView(view);
        a.a((Context) this.getActivity(), this.e);
        this.g = LayoutInflater.from(this.getActivity()).inflate(R.layout.bookshelf_header_msg, (ViewGroup) this.e, false);
        this.g.setVisibility(View.GONE);
        if (am.r((Context) this.getActivity())) {
            this.e.addHeaderView(this.g);
        }
        this.j = new HomeShelfAdapter(this.getActivity());
        this.e.setAdapter(this.j);
        this.e.setOnItemClickListener(this.C);
        this.e.setOnItemLongClickListener(this.D);
        this.j.a(this.x, this.y);
        this.i();
        this.e.getHeight();
        Log.i(a, "" + this.e.getHeight() + " ," + this.e.getMeasuredHeight());
        this.l = (RelativeLayout) this.c.findViewById(R.id.ic_audio_bar);
        this.m = (CoverLoadingView) this.l.findViewById(R.id.cover);
        this.n = (TextView) this.l.findViewById(R.id.tv_title);
        this.o = (TextView) this.l.findViewById(R.id.tv_time);
        this.p = (ImageView) this.l.findViewById(R.id.iv_control);
        this.p.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                HomeShelfFragment.b(HomeShelfFragment.this);
            }
        });
        if (as.c()) {
            this.h();
        }
        this.l.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                HomeShelfFragment.c(HomeShelfFragment.this);
            }
        });
        return this.c;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.E != null) {
            as.b(this.E);
            this.E = null;
        }
        i.a().b(this);
    }

    @com.squareup.a.l
    public void onDownloadProgress(com.clilystudio.netbook.event.I i2) {
        if (this.k == 0) {
            this.j.notifyDataSetChanged();
        }
    }

    @com.squareup.a.l
    public void onFeedAdded(l l2) {
        this.a(l2.b(), l2.a());
    }

    @com.squareup.a.l
    public void onFeedRemoved(com.clilystudio.netbook.event.n n2) {
        this.k();
        a.r(n2.b());
        a.x(n2.b());
    }

    @com.squareup.a.l
    public void onFeedSettingChanged(m m2) {
        this.d.setRefreshing();
    }

    /*
     * Enabled aggressive block sorting
     */
    @com.squareup.a.l
    public void onFocusBookEvent(com.clilystudio.netbook.event.p p2) {
        if (p2.a()) {
            AudioRecord audioRecord = p2.b();
            audioRecord.setUpdateReaded(false);
            audioRecord.setLastRead(new Date().getTime());
            audioRecord.save();
        } else {
            AudioRecord.cancelFollow(p2.b().getBookId());
        }
        this.i();
    }

    /*
     * Enabled aggressive block sorting
     */
    @com.squareup.a.l
    public void onGenderIntroEvent(com.clilystudio.netbook.event.r r2) {
        int n2 = r2.a();
        System.out.println("type : " + n2);
        if (n2 == 0) {
            this.b(3);
            return;
        } else {
            if (n2 == 1) {
                new I(this, this.getActivity()).b("male");
                return;
            }
            if (n2 != 2) return;
            {
                new I(this, this.getActivity()).b("female");
                return;
            }
        }
    }

    @com.squareup.a.l
    public void onHideAdEvent(com.clilystudio.netbook.event.s s2) {
        this.k();
        if (!am.r((Context) this.getActivity()) && this.g != null && this.i != null && this.i.postLink != null && (this.i.postLink.startsWith("link") || this.i.postLink.startsWith("game"))) {
            this.e.removeHeaderView(this.g);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.j.a()) {
            this.e();
        }
        com.clilystudio.netbook.util.c.a().c();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        List<BookShelf> list;
        super.onResume();
        if (!a.A(this.getActivity()) && (list = this.j.f()) != null && !list.isEmpty()) {
            Advert advert = com.clilystudio.netbook.util.c.a().a("top");
            if (advert == null || !HomeShelfFragment.a(this.getActivity(), 0)) {
                a.a((Context) this.getActivity(), null);
            } else {
                BookShelf bookShelf = (BookShelf) list.get(0);
                if (bookShelf.getAdvert() == null) {
                    this.a(list, 0, advert);
                } else if (!advert.equals(bookShelf.getAdvert())) {
                    advert.setPosition("shelf_top");
                    bookShelf.setAdvert(advert);
                }
                this.j.notifyDataSetChanged();
                a.a((Context) this.getActivity(), advert);
            }
        }
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

    @com.squareup.a.l
    public void onShelfUpdated(com.clilystudio.netbook.event.A a2) {
        if (a2.a() == 0 && this.z && am.p((Context) this.getActivity())) {
            if (!this.A) {
                a.a(this.getActivity());
            }
            return;
        }
        this.k();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @com.squareup.a.l
    public void onShowThirdAd(com.clilystudio.netbook.event.B b2) {
        List<BookShelf> list;
        if (this.getActivity() == null) return;
        if (this.getActivity().isFinishing()) {
            return;
        }
        if (b2 == null) return;
        if (!am.q((Context) this.getActivity())) return;
        if (!b2.b().equals("top")) {
            if (!b2.b().equals("bookshelf")) return;
        }
        if ((list = this.j.f()) == null) return;
        if (list.isEmpty()) return;
        Advert advert = b2.a();
        if (advert == null) return;
        int n2 = b2.b().equals("top") ? 0 : 4;
        advert.setType("promotion");
        String string = n2 == 0 ? "shelf_top" : "shelf_five";
        advert.setPosition(string);
        if (HomeShelfFragment.a(list, n2)) {
            this.a(list, n2, advert);
            this.j.notifyDataSetChanged();
            return;
        }
        if (!HomeShelfFragment.b(list, n2)) return;
        list.get(n2).setAdvert(advert);
        this.j.notifyDataSetChanged();
    }

    @com.squareup.a.l
    public void onUpdateAlbum(F f2) {
        this.i();
        Log.i(a, f2.toString());
        long l2 = f2.a();
        if (this.r == null) {
            this.r = new Album();
        }
        this.r.setId(l2);
        this.s = f2.b();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setUserVisibleHint(boolean bl) {
        super.setUserVisibleHint(bl);
        if (!bl) {
            if (!this.j.a()) return;
            {
                this.e();
                return;
            }
        } else {
            if (this.j == null || this.j.f() == null) return;
            {
                this.a(this.j.f());
                return;
            }
        }
    }
}
