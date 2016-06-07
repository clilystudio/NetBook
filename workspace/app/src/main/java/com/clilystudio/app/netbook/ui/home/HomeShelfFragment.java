package com.clilystudio.app.netbook.ui.home;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
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

import com.clilystudio.app.netbook.AppProperties;
import com.clilystudio.app.netbook.R;
import com.clilystudio.app.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.app.netbook.db.AudioRecord;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.db.BookSyncRecord;
import com.clilystudio.app.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.app.netbook.event.F;
import com.clilystudio.app.netbook.event.g;
import com.clilystudio.app.netbook.event.h;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.r;
import com.clilystudio.app.netbook.event.s;
import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.model.BookFeed;
import com.clilystudio.app.netbook.model.BookShelf;
import com.clilystudio.app.netbook.model.ShelfMsg;
import com.clilystudio.app.netbook.model.TxtFileObject;
import com.clilystudio.app.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.app.netbook.ui.feed.FeedListActivity;
import com.clilystudio.app.netbook.util.UmengGameTracer;
import com.clilystudio.app.netbook.util.UmengGameTracer.From;
import com.clilystudio.app.netbook.util.X;
import com.clilystudio.app.netbook.util.am;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.widget.CoverLoadingView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.squareup.otto.Bus;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;
import com.ximalaya.ting.android.opensdk.model.track.Track;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import uk.me.lewisdeane.ldialogs.BaseDialog;
import uk.me.lewisdeane.ldialogs.CustomDialog;

public class HomeShelfFragment extends HomeFragment implements AbsListView.OnScrollListener {
    private static final String TAG = HomeShelfFragment.class.getSimpleName();
    private boolean A = false;
    private long B = 0L;
    private boolean b = true;
    private View rootView;
    private PullToRefreshListView shelfPullToRefreshListView;
    private ListView shelfListView;
    private View emptyView;
    private View adHeaderView;
    private View footerView;
    private ShelfMsg i;
    private HomeShelfAdapter shelfAdapter;
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
    private Button deleteButton;
    private Button selectAllButton;
    private boolean z = false;

    private void a(int paramInt) {
        com.clilystudio.app.netbook.util.c.a().b();
        com.arcsoft.hpay100.a.a.b(getActivity(), "DELETE_SHELF_AD_KEY" + paramInt, new Date().getTime());
        k();
        com.umeng.a.b.a(getActivity(), "ad_delete_shelf");
    }

    private void a(BookFile paramBookFile) {
        TxtFileObject.delete(paramBookFile);
        k();
        new u(this, paramBookFile.getFilePath()).start();
    }

    private void a(BookReadRecord paramBookReadRecord, boolean paramBoolean) {
        com.arcsoft.hpay100.a.a.t(paramBookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(paramBookReadRecord);
        if (paramBoolean) {
            k();
            com.arcsoft.hpay100.a.a.w(paramBookReadRecord.getBookId());
        }
    }

    private void a(BookShelf paramBookShelf, boolean paramBoolean) {
        if (paramBookShelf.getBookRecord() != null) {
            BookReadRecord localBookReadRecord = paramBookShelf.getBookRecord();
            String str = localBookReadRecord.getBookId();
            BookReadRecord.delete(localBookReadRecord);
            a(str);
            if (paramBoolean)
                b(str);
            a(str, localBookReadRecord.getTitle(), localBookReadRecord.isRecommended());
        }
        do {
            return;
            if (paramBookShelf.getTxt() != null) {
                a(paramBookShelf.getTxt());
                return;
            }
            if (paramBookShelf.getType() == 1) {
                a(paramBookShelf.getAdIndex());
                return;
            }
        }
        while (paramBookShelf.getType() != 4);
        paramBookShelf.getAlbum().delete();
        k();
    }

    private void a(Track paramTrack) {
        SubordinatedAlbum localSubordinatedAlbum = paramTrack.getAlbum();
        if (localSubordinatedAlbum != null) {
            shelfListView.a(localSubordinatedAlbum.getAlbumTitle());
            this.n.setText(localSubordinatedAlbum.getAlbumTitle());
        }
        while (TextUtils.isEmpty(paramTrack.getCoverUrlSmall())) {
            this.m.setImageResource(2130837767);
            return;
            shelfListView.a(paramTrack.getTrackTitle());
            this.n.setText(paramTrack.getTrackTitle());
        }
        this.m.setImageUrl(paramTrack.getCoverUrlSmall());
    }

    private void a(String paramString) {
        k();
        com.arcsoft.hpay100.a.a.t(paramString);
        i.a().c(new BookShelfRefreshEvent());
        com.arcsoft.hpay100.a.a.v(paramString);
    }

    private void a(String paramString1, String paramString2, boolean paramBoolean) {
        if (paramBoolean)
            com.umeng.a.b.a(getActivity(), "book_recommend_delete_click", paramString2);
        com.a.a.a.b(getActivity(), paramString1, com.arcsoft.hpay100.a.a.p(getActivity()));
    }

    private void a(List<BookShelf> paramList) {
        if ((!paramList.isEmpty()) && (am_CommonUtils.q_shouldShowAd(getActivity()))) {
            c(paramList, 0);
        }
    }

    private void a(List<BookShelf> paramList, int paramInt, Advert paramAdvert) {
        if (b(paramList, paramInt)) {
            BookShelf localBookShelf2 = (BookShelf) paramList.get(paramInt);
            localBookShelf2.setAdvert(paramAdvert);
            localBookShelf2.setAdIndex(paramInt);
            this.shelfAdapter.notifyDataSetChanged();
            if (paramInt <= 0)
                break label111;
        }
        label111:
        for (String str = "shelf_five"; ; str = "shelf_top") {
            paramAdvert.setPosition(str);
            paramAdvert.recordShow(getActivity());
            return;
            if (!a(paramList, paramInt))
                break;
            BookShelf localBookShelf1 = new BookShelf();
            localBookShelf1.setAdvert(paramAdvert);
            localBookShelf1.setAdIndex(paramInt);
            paramList.add(paramInt, localBookShelf1);
            this.shelfAdapter.notifyDataSetChanged();
            break;
        }
    }

    private void a(List<BookShelf> paramList, List<BookReadRecord> paramList1) {
        BookFeed localBookFeed = new BookFeed();
        List localList = BookReadRecord.getAllFeedFat();
        Iterator localIterator = paramList1.iterator();
        long l1 = 0L;
        long l2;
        while (localIterator.hasNext()) {
            BookReadRecord localBookReadRecord = (BookReadRecord) localIterator.next();
            if (localBookReadRecord.lastActionTime == 0L)
                break label229;
            l2 = localBookReadRecord.lastActionTime;
            if (l1 == 0L)
                l1 = l2;
            else if (l1 >= l2)
                break label229;
        }
        while (true) {
            l1 = l2;
            break;
            if (localList.isEmpty()) {
                localBookFeed.setFat(false);
                String str2 = getString(2131034505);
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = Integer.valueOf(paramList1.size());
                localBookFeed.setTitle(String.format(str2, arrayOfObject2));
            }
            while (true) {
                BookShelf localBookShelf = new BookShelf();
                localBookShelf.setBookFeed(localBookFeed);
                localBookFeed.setLastActionTime(l1);
                paramList.add(localBookShelf);
                return;
                localBookFeed.setFat(true);
                String str1 = getString(2131034504);
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = ((BookReadRecord) localList.get(0)).getTitle();
                localBookFeed.setTitle(String.format(str1, arrayOfObject1));
            }
            label229:
            l2 = l1;
        }
    }

    private void a(boolean paramBoolean) {
        if (paramBoolean) {
            this.p.setImageResource(2130837584);
            return;
        }
        this.p.setImageResource(2130837925);
    }

    private static boolean a(Context paramContext, int paramInt) {
        long l1 = com.arcsoft.hpay100.a.a.a(paramContext, "DELETE_SHELF_AD_KEY" + paramInt, 0L);
        return new Date().getTime() - l1 > 86400000L;
    }

    private static boolean a(List<BookShelf> paramList, int paramInt) {
        if (paramInt >= paramList.size())
            return false;
        if ((paramInt == 0) && (!paramList.isEmpty()) && (((BookShelf) paramList.get(0)).getType() != 1))
            return true;
        if ((paramInt > 0) && (paramList.size() >= 5) && (((BookShelf) paramList.get(0)).getType() == 1) && (((BookShelf) paramList.get(4)).getType() != 1))
            return true;
        return (paramInt > 0) && (paramList.size() >= 4) && (((BookShelf) paramList.get(0)).getType() != 1) && (((BookShelf) paramList.get(4)).getType() != 1);
    }

    private static int b(List<BookShelf> paramList) {
        int i1 = 0;
        List localList = TxtFileObject.getTxtFiles();
        if ((localList == null) || (localList.isEmpty()))
            return 0;
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator1 = localList.iterator();
        while (localIterator1.hasNext()) {
            BookFile localBookFile = (BookFile) localIterator1.next();
            BookShelf localBookShelf4 = new BookShelf();
            localBookShelf4.setTxt(localBookFile);
            if (localBookFile.isTop())
                localArrayList2.add(localBookShelf4);
            else
                localArrayList1.add(localBookShelf4);
        }
        Iterator localIterator2 = localArrayList1.iterator();
        label177:
        label364:
        while (true) {
            BookShelf localBookShelf2;
            int i2;
            if (localIterator2.hasNext()) {
                localBookShelf2 = (BookShelf) localIterator2.next();
                Date localDate = localBookShelf2.getTxt().getUpdated();
                if (localDate == null) {
                    paramList.add(localBookShelf2);
                } else {
                    i2 = 0;
                    if (i2 < paramList.size()) {
                        BookShelf localBookShelf3 = (BookShelf) paramList.get(i2);
                        BookReadRecord localBookReadRecord = localBookShelf3.getBookRecord();
                        if ((localBookReadRecord != null) && (!localBookReadRecord.isTop()) && ((localBookShelf3.getType() == 0) || (localBookShelf3.getType() == 2)) && (localDate.getTime() > localBookReadRecord.getUpdated().getTime()))
                            paramList.add(i2, localBookShelf2);
                    }
                }
            } else {
                for (int i3 = 1; ; i3 = 0) {
                    if (i3 != 0)
                        break label364;
                    paramList.add(localBookShelf2);
                    break;
                    i2++;
                    break label177;
                    Iterator localIterator3 = paramList.iterator();
                    while (localIterator3.hasNext()) {
                        BookShelf localBookShelf1 = (BookShelf) localIterator3.next();
                        if (localBookShelf1.getType() == 0) {
                            if (!localBookShelf1.isTop())
                                break;
                            i1++;
                        }
                    }
                    paramList.addAll(i1, localArrayList2);
                    return paramList.size();
                }
            }
        }
    }

    public static HomeShelfFragment b() {
        return new HomeShelfFragment();
    }

    private void b(int paramInt) {
        switch (paramInt) {
            case 2:
            default:
                return;
            case 1:
                this.emptyView.setVisibility(8);
                this.shelfListView.setVisibility(0);
                return;
            case 3:
        }
        this.emptyView.setVisibility(0);
        this.shelfListView.setVisibility(8);
    }

    private void b(String paramString) {
        new v(this, paramString).start();
    }

    private static boolean b(List<BookShelf> paramList, int paramInt) {
        if (paramInt >= paramList.size())
            return false;
        if ((paramInt == 0) && (!paramList.isEmpty()) && (((BookShelf) paramList.get(0)).getType() == 1))
            return true;
        if ((paramInt > 0) && (paramList.size() >= 5) && (((BookShelf) paramList.get(0)).getType() == 1) && (((BookShelf) paramList.get(4)).getType() == 1))
            return true;
        return (paramInt > 0) && (paramList.size() >= 4) && (((BookShelf) paramList.get(0)).getType() != 1) && (((BookShelf) paramList.get(4)).getType() == 1);
    }

    private void c(List<BookShelf> paramList, int paramInt) {
        String str1;
        String str2;
        if (paramInt == 0) {
            str1 = "top";
            if (paramInt != 0)
                break label107;
            str2 = "rate_zssq_advert_bookshelf_top";
            label17:
            Advert localAdvert = com.clilystudio.app.netbook.util.c.a().a(str1);
            if ((localAdvert == null) || (!a(getActivity(), paramInt)) || (!com.arcsoft.hpay100.a.a.w(getActivity(), str2)))
                break label115;
            if (getActivity() != null)
                new UmengGameTracer(getActivity(), UmengGameTracer.From.Bookshelf).a(localAdvert.get_id());
            localAdvert.setType("promotion");
            a(paramList, paramInt, localAdvert);
        }
        while (true) {
            return;
            str1 = "bookshelf";
            break;
            label107:
            str2 = "rate_zssq_advert_bookshelf_five";
            break label17;
            label115:
            if ((com.arcsoft.hpay100.a.a.A(getActivity())) && (com.arcsoft.hpay100.a.a.t(getActivity()))) {
                getActivity();
                if ((k.c()) || (k.b())) ;
                for (int i1 = 1; (i1 != 0) && (a(getActivity(), paramInt)); i1 = 0) {
                    new com.clilystudio.app.netbook.util.adutil.n().a(getActivity(), str1);
                    return;
                }
            }
        }
    }

    private void g() {
        this.l.setVisibility(0);
        this.shelfListView.removeFooterView(this.footerView);
        this.shelfListView.addFooterView(this.footerView);
    }

    private void h() {
        g();
        a(true);
        a((Track) as.e());
    }

    private void i() {
        long l1 = new Date().getTime();
        if (l1 - this.B < 500L) {
            this.B = l1;
            return;
        }
        this.B = l1;
        try {
            List localList2 = j();
            localList1 = localList2;
            if (localList1 != null) {
                this.shelfAdapter.a(localList1);
                if ((localList1 != null) && (!localList1.isEmpty())) {
                    b(1);
                    if (this.b)
                        this.shelfPullToRefreshListView.setRefreshing();
                    this.b = false;
                    new J(this, (byte) 0).b(new Void[0]);
                    return;
                }
            }
        } catch (Exception localException) {
            while (true) {
                List localList1;
                if ((localException.getMessage() != null) && (localException.getMessage().contains("not attached to Activity"))) {
                    com.umeng.a.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity");
                    localList1 = null;
                } else {
                    com.umeng.a.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:" + localException.getMessage());
                    localList1 = null;
                }
            }
            if (am_CommonUtils.p_isFirstLaunch(getActivity())) {
                if ((!am_CommonUtils.g_hasLogined()) && (!this.A)) {
                    com.arcsoft.hpay100.a.a.a(getActivity());
                    return;
                }
                this.z = true;
            }
            b(3);
            return;
        }
        shelfListView.a(getActivity(), "载入书架失败，请重试");
    }

    private List<BookShelf> j() {
        List<BookShelf> v6 = new ArrayList<>();
        List<BookReadRecord> bookReadRecords;
        if (AppProperties.getSetting("key_shelf_sort", true)) {
            bookReadRecords = BookReadRecord.getAllWithTopNoFeedByRead();
        } else {
            bookReadRecords = BookReadRecord.getAllWithTopNoFeed();
        }
        List<BookReadRecord> v8 = BookReadRecord.getAllFeeding();
        boolean v5 = !v8.isEmpty();
        if (v5) {
            AppProperties.setSetting("FeedUpdateTime", System.currentTimeMillis());
        }
        Iterator<BookReadRecord> iterator = bookReadRecords.iterator();
        boolean v4 = false;
        while (iterator.hasNext()) {
            BookReadRecord v0 = iterator.next();
            if (!v4 && v5 && v0.getUpdated().getTime() < 0) {
                a(v6, v8);
                v4 = true;
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
        if (!v4 && v5) {
            a(v6, v8);
        }
//        Collections.sort(v6, new G(p0, v7));
        if (AppProperties.getSetting("unsync_bookrecord_first", false)) {
            a(v6);
        } else {
            String[] v3 = new String[bookReadRecords.size()];
            for (int v2 = 0; v2 < bookReadRecords.size(); v2++) {
                v3[v2] = bookReadRecords.get(v2).getBookId();
            }
            syncBookRecord(v3, BookSyncRecord.BookModifyType.SHELF_ADD);
            String[] v2 = new String[v8.size()];
            for (int v1 = 0; v1 < v8.size(); v1++) {
                v2[v1] = v8.get(v1).getBookId();
            }
            syncBookRecord(v2, BookSyncRecord.BookModifyType.FEED_ADD);
            AppProperties.setSetting("unsync_bookrecord_first", true);
        }
        return v6;
//        :try_end_1
//                .catch Ljava / lang / Exception;
//        {:try_start_1..:try_end_1
//        }:catch_1
//                v0 = v2 + 0x1;
//        v2 = v0;
//        goto:goto_6
//        :
//        catch_0
//        move - exception v0
//                showErrorMessage("zhuishu_catch_exception", new StringBuilder("HomeShelfFragment_createShelf:"
//                        .append(ex.getMeesage()).toString()));
//         :
//        cond_c
//        :
//        try_start_2
//         :try_end_2
//                .catch Ljava / lang / Exception;
//        {:try_start_2..:try_end_2
//        }:catch_1
//        :
//        goto_8
//        p0.a(v6);
//        return v6;
//        :catch_1
//        move - exception v0
//                v1 = p0.getActivity();
//        v2 = "zhuishu_catch_exception";
//        v3 = new StringBuilder();
//        v4 = "HomeShelfFragment_createShelf:";
//        v3.<init> (v4);
//        v4 = v0.getMessage();
//        v3 = v3.append(v4);
//        v3 = v3.toString();
//        Lcom / umeng / a / b.a(v1, v2, v3);
//        v1 = v0.getMessage();
//        v2 = "no such table: BookSyncRecord";
//        v1 = v1.contains(v2);
//        if (v1 == 0) {
////       if-eqz v1, :cond_e
//        }
//        :try_start_3
//                v1 = new SQLiteUtils();
//        v1 = "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);";
//        Lcom / activeandroid / util / SQLiteUtils.execSql(v1);
//        :try_end_3
//                .catch Ljava / lang / Exception;
//        {:try_start_3..:try_end_3
//        }:catch_2
//        goto:goto_8
//        :
//        catch_2
//        move - exception v1
//                v1 = p0.getActivity();
//        v2 = "zhuishu_catch_exception";
//        v3 = new StringBuilder();
//        v4 = "HomeShelfFragment_createTableBookSyncRecord:";
//        v3.<init> (v4);
//        v0 = v0.getMessage();
//        v0 = v3.append(v0);
//        v0 = v0.toString();
//        Lcom / umeng / a / b.a(v1, v2, v0);
//        goto:goto_8
    }

    private static void syncBookRecord(String[] paramArrayOfString, BookSyncRecord.BookModifyType paramBookModifyType) {
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++) {
            String str3 = paramArrayOfString[j];
            BookSyncRecord.updateOrCreate(o(), str3, BookSyncRecord.getTypeId(paramBookModifyType));
        }
        if ((am.e() == null) || (am.e().getUser() == null)) ;
        String str1;
        String str2;
        List localList;
        do {
            return;
            str1 = am.e().getToken();
            str2 = am.e().getUser().getId();
            localList = BookSyncRecord.find(str2, BookSyncRecord.getTypeId(paramBookModifyType));
        }
        while ((localList == null) || (localList.size() == 0));
        String[] arrayOfString = new String[localList.size()];
        for (int k = 0; k < localList.size(); k++)
            arrayOfString[k] = ((BookSyncRecord) localList.get(k)).getBookId();
        new X(str2, str1, paramBookModifyType, arrayOfString).b(new Void[0]);
    }

    private void a_pub(final List<BookShelf> paramList) {
        View v1 = getActivity().getLayoutInflater().inflate(R.layout.remove_shelf_confirm, null, false);
        final CheckBox v0 = (CheckBox) v1.findViewById(R.id.remove_shelf_cache);

        AlertDialog.Builder v21 = new AlertDialog.Builder(getActivity());
        v21 = v21.setView(v1);
        v21 = v21.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                a_pub2(paramList, v0.isChecked());
                e();
            }
        });
        v21 = v21.setNegativeButton("取消", null);
        v21.create().show();
    }

    private void a_pub2(final List<BookShelf> paramList, boolean checked) {
        Iterator<BookShelf> iterator = paramList.iterator();
        while (iterator.hasNext()) {
            BookShelf bookShelf = iterator.next();
            if (bookShelf.getBookRecord() == null) {
                if (bookShelf.getTxt() == null) {
                    if (bookShelf.getType() != 1) {
                        if (bookShelf.getType() != 4) {
                            bookShelf.getAlbum().delete();
                            k();
                        }
                    } else {
                        a(bookShelf.getAdIndex());
                    }
                } else {
                    a(bookShelf.getTxt());
                }
            } else {
                BookReadRecord bookRecord = bookShelf.getBookRecord();
                String bookId = bookRecord.getBookId();
                BookReadRecord.delete(bookRecord);
                am_CommonUtils.deleteBookRecord(bookId);
                if (checked) {
                    b(bookId);
                }
                a(bookId, bookRecord.getTitle(), bookRecord.isRecommended());
                syncBookRecord(new String[]{bookId}, BookSyncRecord.BookModifyType.SHELF_REMOVE);
            }
        }
        k();
        new Bus().post(new BookShelfRefreshEvent());
    }

    private void k() {
        if (getActivity() != null)
            i();
    }

    public final String a() {
        return "home_shelf";
    }

    public final boolean c() {
        return this.shelfAdapter.a();
    }

    public final void d() {
        com.umeng.a.b.a(getActivity(), "home_shelf_bulk_operation");
        if (this.r != null)
            this.l.setVisibility(8);
        this.shelfListView.removeHeaderView(this.adHeaderView);
        this.w.setVisibility(0);
        this.shelfListView.removeFooterView(this.footerView);
        this.shelfListView.addFooterView(this.footerView);
        this.shelfPullToRefreshListView.setPullToRefreshEnabled(false);
        this.shelfPullToRefreshListView.setPullToRefreshOverScrollEnabled(false);
        this.shelfListView.setOnItemLongClickListener(null);
        this.shelfAdapter.b();
    }

    public final void e() {
        if (this.r != null)
            this.l.setVisibility(0);
        if ((am_CommonUtils.r_shouldShowAdView(getActivity())) || ((this.adHeaderView != null) && (this.i != null) && (this.i.postLink != null) && ((!this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game"))))) {
            this.shelfListView.removeHeaderView(this.adHeaderView);
            this.shelfListView.addHeaderView(this.adHeaderView);
        }
        this.w.setVisibility(8);
        this.shelfListView.removeFooterView(this.footerView);
        this.shelfPullToRefreshListView.setPullToRefreshEnabled(true);
        this.shelfPullToRefreshListView.setPullToRefreshOverScrollEnabled(true);
        this.shelfListView.setOnItemLongClickListener(this.D);
        this.shelfAdapter.c();
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
    }

    public void onAudioBookExitEvent(com.clilystudio.app.netbook.event.b paramb) {
        a(false);
        this.l.setVisibility(8);
        this.shelfListView.removeFooterView(this.footerView);
        this.r = null;
    }

    public void onBookAdded(com.clilystudio.app.netbook.event.c paramc) {
        if (paramc.a())
            k();
        com.arcsoft.hpay100.a.a.r(paramc.b());
        FragmentActivity localFragmentActivity = getActivity();
        String str = paramc.b();
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", shelfListView.c(localFragmentActivity));
        com.a.a.a.a(localFragmentActivity, str, 0.0D, 1, localHashMap);
    }

    public void onBookRead(g paramg) {
        k();
    }

    public void onBookRemoved(h paramh) {
        a(paramh.b());
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        new Bus().register(this);
        if (this.q == null) {
            this.q = as.b();
        }
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup root, Bundle savedInstanceState) {
        Log.i(TAG, "HomeShelfFragment onCreateView");
        this.rootView = paramLayoutInflater.inflate(R.layout.fragment_home_shelf, root, false);
        this.shelfPullToRefreshListView = ((PullToRefreshListView) this.rootView.findViewById(R.id.home_shelf_ptr));
        this.shelfPullToRefreshListView.setOnScrollListener(this);
        this.shelfPullToRefreshListView.setOnRefreshListener(new PullToRefreshBase.OnRefreshListener2<ListView>() {
            @Override
            public void onPullDownToRefresh(PullToRefreshBase<ListView> refreshView) {
                new Bus().post(new BookShelfRefreshEvent());
                e();
                com.clilystudio.app.netbook.adapter.HomeShelfAdapter.a = true;
                new Handler().postDelayed(new com.clilystudio.app.netbook.ui.home.F(this), 1000L);
            }

            @Override
            public void onPullUpToRefresh(PullToRefreshBase<ListView> refreshView) {

            }
        });
        this.shelfListView = this.shelfPullToRefreshListView.getRefreshableView();
        this.emptyView = this.rootView.findViewById(R.id.home_shelf_empty);
        this.footerView = LayoutInflater.from(getActivity()).inflate(R.layout.layout_shelf_footer, this.shelfListView, false);
        this.rootView.findViewById(R.id.add_new_book).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((HomeActivity) getActivity()).g_gotoFindFragment();
            }
        });
        this.w = ((RelativeLayout) this.rootView.findViewById(R.id.delete_shelf_bar));
        this.w.setOnTouchListener(new y(this));
        this.deleteButton = ((Button) this.w.findViewById(R.id.delete));
        this.deleteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                List localList;
                if (HomeShelfFragment.this.shelfAdapter != null) {
                    localList = HomeShelfFragment.this.shelfAdapter.e();
                    if (localList == null || localList.size() == 0) {
                        com.clilystudio.app.netbook.util.e.a(getActivity(), "你没有选择要删除的书哦");
                    } else {
                        a_pub(localList);
                    }
                }
            }
        });
        this.selectAllButton = ((Button) this.w.findViewById(R.id.select_all));
        this.selectAllButton.setOnClickListener(new z(this));
        if (Build.VERSION.SDK_INT > 19) {
            this.shelfListView.setFooterDividersEnabled(false);
        }
        View localView = LayoutInflater.from(getActivity()).inflate(R.layout.ptr_list_footer_empty_view, null);
        this.shelfListView.addFooterView(localView);
        am_CommonUtils.configListView(getActivity(), this.shelfListView);
        this.adHeaderView = LayoutInflater.from(getActivity()).inflate(R.layout.bookshelf_header_msg, this.shelfListView, false);
        this.adHeaderView.setVisibility(View.GONE);
        if (am_CommonUtils.r_shouldShowAdView(getActivity())) {
            this.shelfListView.addHeaderView(this.adHeaderView);
        }
        this.shelfAdapter = new HomeShelfAdapter(getActivity());
        this.shelfListView.setAdapter(this.shelfAdapter);
        this.shelfListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookShelf localBookShelf = shelfAdapter.e().get(position);
                if (localBookShelf != null) {
                    if (HomeShelfFragment.a(this.a).a()) {
                        HomeShelfFragment.a(this.a).a(paramInt - HomeShelfFragment.j(this.a).getHeaderViewsCount());
                        return;
                    }
                    switch (localBookShelf.getType()) {
                        case 0:
                            BookReadRecord localBookReadRecord = localBookShelf.getBookRecord();
                            new com.clilystudio.app.netbook.util.m(this.a.getActivity()).a(localBookReadRecord);
                            if (localBookReadRecord.isUnread()) {
                                localBookReadRecord.setUnread(false);
                                localBookReadRecord.save();
                                HomeShelfFragment.a(this.a).notifyDataSetChanged();
                            }
                            if (localBookReadRecord.isRecommended()) {
                                com.umeng.a.b.a(this.a.getActivity(), "book_recommend_read_click", localBookReadRecord.getTitle());
                            }
                            break;
                        case 1:
                            BookFile localBookFile = localBookShelf.getTxt();
                            if (new File(localBookFile.getFilePath()).exists()) {
                                String str = localBookFile.getPathAndName();
                                Intent localIntent2 = new Intent("com.clilystudio.app.netbook.ACTION_READ_TXT");
                                localIntent2.putExtra("file_name", str);
                                this.a.startActivity(localIntent2);
                            } else {
                                e.a(this.a.getActivity(), "书籍不存在");
                                TxtFileObject.delete(localBookFile);
                                i_OttoBus.a().c(new com.clilystudio.app.netbook.event.A());
                            }
                            break;
                        case 2:
                            Advert localAdvert = localBookShelf.getAdvert();
                            localAdvert.processClick(paramView);
                            if (!localAdvert.isRead()) {
                                HomeShelfFragment.a(this.a, localAdvert);
                                HomeShelfFragment.a(this.a).notifyDataSetChanged();
                            }
                            break;
                        case 3:
                            Intent localIntent1
                            if (a.l(this.a.getActivity(), "feed_intro")) {
                                localIntent1 = new Intent(this.a.getActivity(), FeedIntroActivity.class);
                            } else {
                                localIntent1 = new Intent(this.a.getActivity(), FeedListActivity.class
                            }
                            this.a.startActivity(localIntent1);
                            break;
                        case 4:
                            AudioRecord localAudioRecord = localBookShelf.getAlbum();
                            HomeShelfFragment.a(this.a, localAudioRecord);
                            if (!localAudioRecord.isUpdateReaded()) {
                                AudioRecord.updateRecordRead(localAudioRecord.getBookId(), true);
                            }
                            AudioRecord.updateLastRead(localAudioRecord.getBookId());
                            HomeShelfFragment.c(this.a);
                        default:
                            return;
                    }
                }
            }
        });
        this.shelfListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()

                                                      {
                                                          @Override
                                                          public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                                                              BookShelf localBookShelf = HomeShelfFragment.a(this.a, paramInt);
                                                              if (localBookShelf == null)
                                                                  return true;
                                                              int i = localBookShelf.getType();
                                                              String[] arrayOfString;
                                                              if (i == 1)
                                                                  arrayOfString = new String[]{"删除", "去广告"};
                                                              while (true) {
                                                                  HomeShelfFragment.a(this.a, arrayOfString, localBookShelf);
                                                                  return true;
                                                                  if (i == 0) {
                                                                      if (localBookShelf.isTop())
                                                                          arrayOfString = new String[]{"取消置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                                                                      else
                                                                          arrayOfString = new String[]{"置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                                                                  } else if (i == 2) {
                                                                      if (localBookShelf.isTop())
                                                                          arrayOfString = new String[]{"取消置顶", "删除", "批量管理"};
                                                                      else
                                                                          arrayOfString = new String[]{"置顶", "删除", "批量管理"};
                                                                  } else {
                                                                      arrayOfString = null;
                                                                      if (i == 4)
                                                                          if (localBookShelf.isTop())
                                                                              arrayOfString = new String[]{"取消置顶", "书籍详情", "删除", "批量管理"};
                                                                          else
                                                                              arrayOfString = new String[]{"置顶", "书籍详情", "删除", "批量管理"};
                                                                  }
                                                              }
                                                          }
                                                      }

        );
        this.shelfAdapter.a(this.deleteButton, this.selectAllButton);

        i();

        this.shelfListView.getHeight();
        Log.i(TAG, this.shelfListView.getHeight() + " ," + this.shelfListView.getMeasuredHeight());
        this.l = ((RelativeLayout) this.rootView.findViewById(R.id.ic_audio_bar));
        this.m = ((CoverLoadingView) this.l.findViewById(R.id.cover));
        this.n = ((TextView) this.l.findViewById(R.id.tv_title));
        this.o = ((TextView) this.l.findViewById(R.id.tv_time));
        this.p = ((ImageView) this.l.findViewById(R.id.iv_control));
        this.p.setOnClickListener(new View.OnClickListener()

                                  {
                                      @Override
                                      public void onClick(View v) {
                                          if (as.c()) {
                                              h();
                                          } else {
                                              u.d();
                                          }
                                      }
                                  }

        );
        if (as.c())

            h();

        this.l.setOnClickListener(new View.OnClickListener()

                                  {
                                      @Override
                                      public void onClick(View v) {
                                          // Play Audio
                                      }
                                  }

        );
        return this.rootView;
    }

    public void onDestroy() {
        super.onDestroy();
        new Bus().unregister(this);
    }

    public void onDownloadProgress(com.clilystudio.app.netbook.event.I paramI) {
        if (this.k == 0)
            this.shelfAdapter.notifyDataSetChanged();
    }

    public void onFeedAdded(com.clilystudio.app.netbook.event.l paraml) {
        a(paraml.b(), paraml.a());
    }

    public void onFeedRemoved(com.clilystudio.app.netbook.event.n paramn) {
        k();
        com.arcsoft.hpay100.a.a.r(paramn.b());
        com.arcsoft.hpay100.a.a.x(paramn.b());
    }

    public void onFeedSettingChanged(m paramm) {
        this.shelfPullToRefreshListView.setRefreshing();
    }

    public void onFocusBookEvent(com.clilystudio.app.netbook.event.p paramp) {
        if (paramp.a()) {
            AudioRecord localAudioRecord = paramp.b();
            localAudioRecord.setUpdateReaded(false);
            localAudioRecord.setLastRead(new Date().getTime());
            localAudioRecord.save();
        }
        while (true) {
            i();
            return;
            AudioRecord.cancelFollow(paramp.b().getBookId());
        }
    }

    public void onGenderIntroEvent(r paramr) {
        int i1 = paramr.a();
        System.out.println("type : " + i1);
        if (i1 == 0)
            b(3);
        do {
            return;
            if (i1 == 1) {
                new I_BookRecommandTask(this, getActivity()).b(new String[]{"male"});
                return;
            }
        }
        while (i1 != 2);
        new I_BookRecommandTask(this, getActivity()).b(new String[]{"female"});
    }

    public void onHideAdEvent(s params) {
        k();
        if ((!am_CommonUtils.r_shouldShowAdView(getActivity())) && (this.adHeaderView != null) && (this.i != null) && (this.i.postLink != null) && ((this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game"))))
            this.shelfListView.removeHeaderView(this.adHeaderView);
    }

    public void onPause() {
        super.onPause();
        if (this.shelfAdapter.a())
            e();
        com.clilystudio.app.netbook.util.c.a().c();
    }

    public void onResume() {
        super.onResume();
        List localList;
        if (!com.arcsoft.hpay100.a.a.A(getActivity())) {
            localList = this.shelfAdapter.f();
            if ((localList != null) && (!localList.isEmpty()))
                break label41;
        }
        label41:
        Advert localAdvert;
        while (true) {
            this.A = false;
            return;
            localAdvert = com.clilystudio.app.netbook.util.c.a().a("top");
            if ((localAdvert != null) && (a(getActivity(), 0)))
                break;
            com.arcsoft.hpay100.a.a.a(getActivity(), null);
        }
        BookShelf localBookShelf = (BookShelf) localList.get(0);
        if (localBookShelf.getAdvert() == null)
            a(localList, 0, localAdvert);
        while (true) {
            this.shelfAdapter.notifyDataSetChanged();
            com.arcsoft.hpay100.a.a.a(getActivity(), localAdvert);
            break;
            if (!localAdvert.equals(localBookShelf.getAdvert())) {
                localAdvert.setPosition("shelf_top");
                localBookShelf.setAdvert(localAdvert);
            }
        }
    }

    public void onSaveInstanceState(Bundle paramBundle) {
        super.onSaveInstanceState(paramBundle);
        this.A = true;
    }

    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {
    }

    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {
        this.k = paramInt;
    }

    public void onShelfUpdated(com.clilystudio.app.netbook.event.A paramA) {
        if ((paramA.a() == 0) && (this.z) && (am_CommonUtils.p_isFirstLaunch(getActivity()))) {
            if (!this.A)
                com.arcsoft.hpay100.a.a.a(getActivity());
            return;
        }
        k();
    }

    public void onShowThirdAd(com.clilystudio.app.netbook.event.B paramB) {
        if ((getActivity() == null) || (getActivity().isFinishing())) ;
        label17:
        List localList;
        Advert localAdvert;
        int i1;
        label158:
        label166:
        do {
            do {
                do {
                    break label17;
                    do
                        return;
                    while ((paramB == null) || (!am_CommonUtils.q_shouldShowAd(getActivity())) || ((!paramB.b().equals("top")) && (!paramB.b().equals("bookshelf"))));
                    localList = this.shelfAdapter.f();
                }
                while ((localList == null) || (localList.isEmpty()));
                localAdvert = paramB.a();
            }
            while (localAdvert == null);
            if (paramB.b().equals("top")) {
                i1 = 0;
                localAdvert.setType("promotion");
                if (i1 != 0)
                    break label158;
            }
            for (String str = "shelf_top"; ; str = "shelf_five") {
                localAdvert.setPosition(str);
                if (!a(localList, i1))
                    break label166;
                a(localList, i1, localAdvert);
                this.shelfAdapter.notifyDataSetChanged();
                return;
                i1 = 4;
                break;
            }
        }
        while (!b(localList, i1));
        ((BookShelf) localList.get(i1)).setAdvert(localAdvert);
        this.shelfAdapter.notifyDataSetChanged();
    }

    @com.squareup.a.l
    public void onUpdateAlbum(F paramF) {
        i();
        Log.i(TAG, paramF.toString());
        long l1 = paramF.a();
        if (this.r == null)
            this.r = new Album();
        this.r.setId(l1);
        this.s = paramF.b();
    }

    public void setUserVisibleHint(boolean paramBoolean) {
        super.setUserVisibleHint(paramBoolean);
        if (!paramBoolean)
            if (this.shelfAdapter.a())
                e();
        while ((this.shelfAdapter == null) || (this.shelfAdapter.f() == null))
            return;
        a(this.shelfAdapter.f());
    }
}
