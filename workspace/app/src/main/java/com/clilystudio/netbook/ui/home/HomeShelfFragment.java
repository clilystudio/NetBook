package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.F;
import com.clilystudio.netbook.event.g;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.m;
import com.clilystudio.netbook.event.r;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.CoverLoadingView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class HomeShelfFragment extends HomeFragment
        implements AbsListView.OnScrollListener {
    private static final String a = HomeShelfFragment.class.getSimpleName();
    private boolean A = false;
    private long B = 0L;
    private AdapterView.OnItemClickListener C = new p(this);
    private AdapterView.OnItemLongClickListener D = new q(this);
    private IXmPlayerStatusListener E = new x(this);
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

    private static boolean a(Context paramContext, int paramInt) {
        long l1 = com.clilystudio.netbook.hpay100.a_Pack.a.a(paramContext, "DELETE_SHELF_AD_KEY" + paramInt, 0L);
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
            if (localBookFile.isTop()) {
                localArrayList2.add(localBookShelf4);
                continue;
            }
            localArrayList1.add(localBookShelf4);
        }
        Iterator localIterator2 = localArrayList1.iterator();
        label177:
        label360:
        label364:
        while (true) {
            BookShelf localBookShelf2;
            int i2;
            if (localIterator2.hasNext()) {
                localBookShelf2 = (BookShelf) localIterator2.next();
                Date localDate = localBookShelf2.getTxt().getUpdated();
                if (localDate == null) {
                    paramList.add(localBookShelf2);
                    continue;
                }
                i2 = 0;
                if (i2 >= paramList.size())
                    break label360;
                BookShelf localBookShelf3 = (BookShelf) paramList.get(i2);
                BookReadRecord localBookReadRecord = localBookShelf3.getBookRecord();
                if ((localBookReadRecord != null) && (!localBookReadRecord.isTop()) && ((localBookShelf3.getType() == 0) || (localBookShelf3.getType() == 2)) && (localDate.getTime() > localBookReadRecord.getUpdated().getTime()))
                    paramList.add(i2, localBookShelf2);
            }
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
                    if (localBookShelf1.getType() != 0)
                        continue;
                    if (!localBookShelf1.isTop())
                        break;
                    i1++;
                }
                paramList.addAll(i1, localArrayList2);
                return paramList.size();
            }
        }
    }

    public static HomeShelfFragment b() {
        return new HomeShelfFragment();
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

    private void a(int paramInt) {
        com.clilystudio.netbook.util.c.a().b();
        com.clilystudio.netbook.hpay100.a_Pack.a.b(getActivity(), "DELETE_SHELF_AD_KEY" + paramInt, new Date().getTime());
        k();
        com.clilystudio.netbook.umeng.a_Pack.b.a(getActivity(), "ad_delete_shelf");
    }

    private void a(BookFile paramBookFile) {
        TxtFileObject.delete(paramBookFile);
        k();
        new u(this, paramBookFile.getFilePath()).start();
    }

    private void a(BookReadRecord paramBookReadRecord, boolean paramBoolean) {
        com.clilystudio.netbook.hpay100.a_Pack.a.t(paramBookReadRecord.getBookId());
        BookReadRecord.addAccountInfo(paramBookReadRecord);
        if (paramBoolean) {
            k();
            com.clilystudio.netbook.hpay100.a_Pack.a.w(paramBookReadRecord.getBookId());
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
            if (paramBookShelf.getType() != 1)
                continue;
            a(paramBookShelf.getAdIndex());
            return;
        }
        while (paramBookShelf.getType() != 4);
        paramBookShelf.getAlbum().delete();
        k();
    }

    private void a(Track paramTrack) {
        SubordinatedAlbum localSubordinatedAlbum = paramTrack.getAlbum();
        if (localSubordinatedAlbum != null) {
            e.a(localSubordinatedAlbum.getAlbumTitle());
            this.n.setText(localSubordinatedAlbum.getAlbumTitle());
        }
        while (TextUtils.isEmpty(paramTrack.getCoverUrlSmall())) {
            this.m.setImageResource(2130837767);
            return;
            e.a(paramTrack.getTrackTitle());
            this.n.setText(paramTrack.getTrackTitle());
        }
        this.m.setImageUrl(paramTrack.getCoverUrlSmall());
    }

    private void a(String paramString) {
        k();
        com.clilystudio.netbook.hpay100.a_Pack.a.t(paramString);
        i.a().c(new BookShelfRefreshEvent());
        com.clilystudio.netbook.hpay100.a_Pack.a.v(paramString);
    }

    private void a(String paramString1, String paramString2, boolean paramBoolean) {
        if (paramBoolean)
            com.clilystudio.netbook.umeng.a_Pack.b.a(getActivity(), "book_recommend_delete_click", paramString2);
        com.a.a.a.b(getActivity(), paramString1, com.clilystudio.netbook.hpay100.a_Pack.a.p(getActivity()));
    }

    private void a(List<BookShelf> paramList) {
        if ((!paramList.isEmpty()) && (am.q(getActivity()))) {
            c(paramList, 0);
            if (com.clilystudio.netbook.hpay100.a_Pack.a.F(getActivity())) {
                com.clilystudio.netbook.util.c.a().c();
                c(paramList, 4);
            }
        }
    }

    private void a(List<BookShelf> paramList, int paramInt, Advert paramAdvert) {
        if (b(paramList, paramInt)) {
            BookShelf localBookShelf2 = (BookShelf) paramList.get(paramInt);
            localBookShelf2.setAdvert(paramAdvert);
            localBookShelf2.setAdIndex(paramInt);
            this.j.notifyDataSetChanged();
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
            this.j.notifyDataSetChanged();
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
            if (l1 == 0L) {
                l1 = l2;
                continue;
            }
            if (l1 >= l2)
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

    private void b(int paramInt) {
        switch (paramInt) {
            case 2:
            default:
                return;
            case 1:
                this.f.setVisibility(8);
                this.e.setVisibility(0);
                return;
            case 3:
        }
        this.f.setVisibility(0);
        this.e.setVisibility(8);
    }

    private void b(String paramString) {
        new v(this, paramString).start();
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
            Advert localAdvert = com.clilystudio.netbook.util.c.a().a(str1);
            if ((localAdvert == null) || (!a(getActivity(), paramInt)) || (!com.clilystudio.netbook.hpay100.a_Pack.a.w(getActivity(), str2)))
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
            if ((!com.clilystudio.netbook.hpay100.a_Pack.a.A(getActivity())) || (!com.clilystudio.netbook.hpay100.a_Pack.a.t(getActivity())))
                continue;
            getActivity();
            if ((k.c()) || (k.b())) ;
            for (int i1 = 1; (i1 != 0) && (a(getActivity(), paramInt)); i1 = 0) {
                new com.clilystudio.netbook.util.adutil.n().a(getActivity(), str1);
                return;
            }
        }
    }

    private void g() {
        this.l.setVisibility(0);
        this.e.removeFooterView(this.h);
        this.e.addFooterView(this.h);
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
                this.j.a(localList1);
                if ((localList1 != null) && (!localList1.isEmpty())) {
                    b(1);
                    if (this.b)
                        this.d.setRefreshing();
                    this.b = false;
                    new J(this, 0).b(new Void[0]);
                    return;
                }
            }
        } catch (Exception localException) {
            while (true) {
                if ((localException.getMessage() != null) && (localException.getMessage().contains("not attached to Activity"))) {
                    com.clilystudio.netbook.umeng.a_Pack.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity");
                    localList1 = null;
                    continue;
                }
                com.clilystudio.netbook.umeng.a_Pack.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:" + localException.getMessage());
                List localList1 = null;
            }
            if (am.p(getActivity())) {
                if ((!am.g()) && (!this.A)) {
                    com.clilystudio.netbook.hpay100.a_Pack.a.a(getActivity());
                    return;
                }
                this.z = true;
            }
            b(3);
            return;
        }
        e.a(getActivity(), "载入书架失败，请重试");
    }

    // ERROR //
    private List<BookShelf> j() {
        v6 = new ArrayList();
        v6.<init> ();
        v0 = p0.getActivity();
        v1 = "key_shelf_sort";
        v2 = 0x1;
        v7 = Lcom / arcsoft / hpay100 / a / a.a(v0, v1, v2);
        if (v7 != 0) {
//       if-nez v7, :cond_4
        }
        v0 = invoke - static {
        },com.clilystudio.netbook.db / BookReadRecord;->getAllWithTopNoFeed() Ljava / util / List;
        v1 = v0;
        :goto_0
                v8 = invoke - static {
        },com.clilystudio.netbook.db / BookReadRecord;->getAllFeeding() Ljava / util / List;
        v0 = v8.isEmpty();
        if (v0 != 0) {
//       if-nez v0, :cond_5
        }
        v0 = 0x1;
        v5 = v0;
        :goto_1
                v0 = 0x0;
        v2 = 0x0;
        if (v5 == 0) {
//       if-eqz v5, :cond_0
        }
        v2 = p0.getActivity();
        v3 = "FeedUpdateTime";
        invoke - static {
        },Ljava / lang / System;->currentTimeMillis() J
        move - result - wide v10
                v2 = Lcom / arcsoft / hpay100 / a / a.c(v2, v3, v10, v11);
        :cond_0
                v9 = v1.iterator();
        v4 = v0;
        :goto_2
                v0 = v9.hasNext();
        if (v0 == 0) {
//       if-eqz v0, :cond_6
        }
        v0 = v9.next();
        check - cast v0, com.clilystudio.netbook.db / BookReadRecord;
        v10 = v0.getUpdated();
        v10 = v10.getTime();
        if (v4 != 0) {
//       if-nez v4, :cond_1
        }
        if (v5 == 0) {
//       if-eqz v5, :cond_1
        }
        cmp - long v10, v2, v10
        if (v10 < 0) {
//       if-ltz v10, :cond_1
        }
        p0.a(v6, v8);
        v4 = 0x1;
        :cond_1
                v10 = new BookShelf();
        v10.<init> ();
        v10.setBookRecord(v0);
        v11 = v0.com.clilystudio.netbook.db / BookReadRecord;->readTime;
        if (v11 == 0) {
//       if-eqz v11, :cond_2
        }
        v11 = v0.com.clilystudio.netbook.db / BookReadRecord;->readTime;
        v12 = v11.getTime();
        v10.setLastRead(v12, v13);
        :cond_2
                v11 = v0.getUpdated();
        if (v11 == 0) {
//       if-eqz v11, :cond_3
        }
        v0 = v0.getUpdated();
        v12 = v0.getTime();
        v10.setLastUpdate(v12, v13);
        :cond_3
        v6.add(v10);
        goto:goto_2
        :
        cond_4
                v0 = invoke - static {
        },com.clilystudio.netbook.db / BookReadRecord;->getAllWithTopNoFeedByRead() Ljava / util / List;
        v1 = v0;
        goto:goto_0
        :
        cond_5
                v0 = 0x0;
        v5 = v0;
        goto:goto_1
        :
        cond_6
                v0 = com.clilystudio.netbook.ui / home / HomeShelfFragment.b(v6);
        p0.com.clilystudio.netbook.ui / home / HomeShelfFragment;->v = v0;
        if (v4 != 0) {
//       if-nez v4, :cond_7
        }
        if (v5 == 0) {
//       if-eqz v5, :cond_7
        }
        p0.a(v6, v8);
        :cond_7
                v0 = p0.getActivity();
        v2 = "delete_audio_on_shelf";
        v0 = Lcom / umeng / a / b.b(v0, v2);
        if (v0 == 0) {
//       if-eqz v0, :cond_8
        }
        v2 = "1";
        v0 = v2.equals(v0);
        if (v0 == 0) {
//       if-eqz v0, :cond_8
        }
        v0 = 0x1;
        v2 = v0;
        :goto_3
                v0 = invoke - static {
        },com.clilystudio.netbook.db / AudioRecord;->findAll() Ljava / util / List;
        v3 = v0.iterator();
        :goto_4
                v0 = v3.hasNext();
        if (v0 == 0) {
//       if-eqz v0, :cond_b
        }
        v0 = v3.next();
        check - cast v0, com.clilystudio.netbook.db / AudioRecord;
        if (v2 == 0) {
//       if-eqz v2, :cond_9
        }
        v0.delete();
        p0.k();
        goto:goto_4
        :
        cond_8
                v0 = 0x0;
        v2 = v0;
        goto:goto_3
        :
        cond_9
                v4 = new BookShelf();
        v4.<init> ();
        v4.setAlbum(v0);
        v10 = v0.getLastRead();
        v4.setLastRead(v10, v11);
        v10 = v0.getLastUpdate();
        v4.setLastUpdate(v10, v11);
        v0 = v4.isTop();
        if (v0 == 0) {
//       if-eqz v0, :cond_a
        }
        v0 = 0x0;
        v6.add(v0, v4);
        goto:goto_4
        :
        cond_a
        v6.add(v4);
        goto:goto_4
        :
        cond_b
        :
        try_start_0
                v0 = new G();
        v0.<init> (p0, v7);
        Ljava / util / Collections.sort(v6, v0);
        :try_end_0
                .catch Ljava / lang / Exception;
        {:try_start_0..:try_end_0
        }:catch_0
        :
        goto_5
        :
        try_start_1
                v0 = p0.getActivity();
        v2 = "unsync_bookrecord_first";
        v3 = 0x0;
        v0 = Lcom / arcsoft / hpay100 / a / a.a(v0, v2, v3);
        if (v0 != 0) {
//       if-nez v0, :cond_e
        }
        v0 = v1.size();
        new - array v3, v0,[Ljava / lang / String;
        v0 = 0x0;
        v2 = v0;
        :goto_6
                v0 = v1.size();
        if (v2 >= v0) {
//       if-ge v2, v0, :cond_c
        }
        v0 = v1.get(v2);
        check - cast v0, com.clilystudio.netbook.db / BookReadRecord;
        v0 = v0.getBookId();
        v3[v2] = v0;
        :try_end_1
                .catch Ljava / lang / Exception;
        {:try_start_1..:try_end_1
        }:catch_1
                v0 = v2 + 0x1;
        v2 = v0;
        goto:goto_6
        :
        catch_0
        move - exception v0
                v2 = p0.getActivity();
        v3 = "zhuishu_catch_exception";
        v4 = new StringBuilder();
        v5 = "HomeShelfFragment_createShelf:";
        v4.<init> (v5);
        v0 = v0.getMessage();
        v0 = v4.append(v0);
        v0 = v0.toString();
        Lcom / umeng / a / b.a(v2, v3, v0);
        goto:goto_5
        :
        cond_c
        :
        try_start_2
        Lcom / arcsoft / hpay100 / a / a.a(v3);
        v0 = v8.size();
        new - array v2, v0,[Ljava / lang / String;
        v0 = 0x0;
        v1 = v0;
        :goto_7
                v0 = v8.size();
        if (v1 >= v0) {
//       if-ge v1, v0, :cond_d
        }
        v0 = v8.get(v1);
        check - cast v0, com.clilystudio.netbook.db / BookReadRecord;
        v0 = v0.getBookId();
        v2[v1] = v0;
        v0 = v1 + 0x1;
        v1 = v0;
        goto:goto_7
        :
        cond_d
        Lcom / arcsoft / hpay100 / a / a.b(v2);
        v0 = p0.getActivity();
        v1 = "unsync_bookrecord_first";
        v2 = 0x1;
        Lcom / arcsoft / hpay100 / a / a.b(v0, v1, v2);
        :try_end_2
                .catch Ljava / lang / Exception;
        {:try_start_2..:try_end_2
        }:catch_1
        :
        cond_e
        :
        goto_8
        p0.a(v6);
        return v6;
        :catch_1
        move - exception v0
                v1 = p0.getActivity();
        v2 = "zhuishu_catch_exception";
        v3 = new StringBuilder();
        v4 = "HomeShelfFragment_createShelf:";
        v3.<init> (v4);
        v4 = v0.getMessage();
        v3 = v3.append(v4);
        v3 = v3.toString();
        Lcom / umeng / a / b.a(v1, v2, v3);
        v1 = v0.getMessage();
        v2 = "no such table: BookSyncRecord";
        v1 = v1.contains(v2);
        if (v1 == 0) {
//       if-eqz v1, :cond_e
        }
        :try_start_3
                v1 = new SQLiteUtils();
        v1.<init> ();
        v1 = "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);";
        Lcom / activeandroid / util / SQLiteUtils.execSql(v1);
        :try_end_3
                .catch Ljava / lang / Exception;
        {:try_start_3..:try_end_3
        }:catch_2
        goto:goto_8
        :
        catch_2
        move - exception v1
                v1 = p0.getActivity();
        v2 = "zhuishu_catch_exception";
        v3 = new StringBuilder();
        v4 = "HomeShelfFragment_createTableBookSyncRecord:";
        v3.<init> (v4);
        v0 = v0.getMessage();
        v0 = v3.append(v0);
        v0 = v0.toString();
        Lcom / umeng / a / b.a(v1, v2, v0);
        goto:goto_8
    }

    private void k() {
        if (getActivity() != null)
            i();
    }

    public final String a() {
        return "home_shelf";
    }

    public final boolean c() {
        return this.j.a();
    }

    public final void d() {
        com.clilystudio.netbook.umeng.a_Pack.b.a(getActivity(), "home_shelf_bulk_operation");
        if (this.r != null)
            this.l.setVisibility(8);
        this.e.removeHeaderView(this.g);
        this.w.setVisibility(0);
        this.e.removeFooterView(this.h);
        this.e.addFooterView(this.h);
        this.d.setPullToRefreshEnabled(false);
        this.d.setPullToRefreshOverScrollEnabled(false);
        this.e.setOnItemLongClickListener(null);
        this.j.b();
    }

    public final void e() {
        if (this.r != null)
            this.l.setVisibility(0);
        if ((am.r(getActivity())) || ((this.g != null) && (this.i != null) && (this.i.postLink != null) && ((!this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game"))))) {
            this.e.removeHeaderView(this.g);
            this.e.addHeaderView(this.g);
        }
        this.w.setVisibility(8);
        this.e.removeFooterView(this.h);
        this.d.setPullToRefreshEnabled(true);
        this.d.setPullToRefreshOverScrollEnabled(true);
        this.e.setOnItemLongClickListener(this.D);
        this.j.c();
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
    }

    @com.squareup.a.l
    public void onAudioBookExitEvent(com.clilystudio.netbook.event.b paramb) {
        a(false);
        this.l.setVisibility(8);
        this.e.removeFooterView(this.h);
        this.r = null;
    }

    @com.squareup.a.l
    public void onBookAdded(com.clilystudio.netbook.event.c paramc) {
        if (paramc.a())
            k();
        com.clilystudio.netbook.hpay100.a_Pack.a.r(paramc.b());
        FragmentActivity localFragmentActivity = getActivity();
        String str = paramc.b();
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", e.c(localFragmentActivity));
        com.a.a.a.a(localFragmentActivity, str, 0.0D, 1, localHashMap);
    }

    @com.squareup.a.l
    public void onBookRead(g paramg) {
        k();
    }

    @com.squareup.a.l
    public void onBookRemoved(h paramh) {
        a(paramh.b());
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        i.a().a(this);
        if (this.q == null)
            this.q = as.b();
        as.a(this.E);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        Log.i(a, "HomeShelfFragment onCreateView");
        (60.0F * (getActivity().getResources().getDisplayMetrics().densityDpi / 160.0F));
        this.c = paramLayoutInflater.inflate(2130903213, paramViewGroup, false);
        this.d = ((PullToRefreshListView) this.c.findViewById(2131493440));
        this.e = ((ListView) this.d.h());
        this.d.setOnScrollListener(this);
        this.f = this.c.findViewById(2131493361);
        this.h = LayoutInflater.from(getActivity()).inflate(2130903256, this.e, false);
        this.c.findViewById(2131493362).setOnClickListener(new n(this));
        this.w = ((RelativeLayout) this.c.findViewById(2131493442));
        this.w.setOnTouchListener(new y(this));
        this.x = ((Button) this.w.findViewById(2131492907));
        this.y = ((Button) this.w.findViewById(2131493990));
        this.y.setOnClickListener(new z(this));
        this.x.setOnClickListener(new A(this));
        this.d.setOnRefreshListener(new E(this));
        if (com.clilystudio.netbook.hpay100.a_Pack.a.i())
            this.e.setFooterDividersEnabled(false);
        View localView = LayoutInflater.from(getActivity()).inflate(2130903354, null);
        this.e.addFooterView(localView);
        com.clilystudio.netbook.hpay100.a_Pack.a.a(getActivity(), this.e);
        this.g = LayoutInflater.from(getActivity()).inflate(2130903168, this.e, false);
        this.g.setVisibility(8);
        if (am.r(getActivity()))
            this.e.addHeaderView(this.g);
        this.j = new HomeShelfAdapter(getActivity());
        this.e.setAdapter(this.j);
        this.e.setOnItemClickListener(this.C);
        this.e.setOnItemLongClickListener(this.D);
        this.j.a(this.x, this.y);
        i();
        this.e.getHeight();
        Log.i(a, this.e.getHeight() + " ," + this.e.getMeasuredHeight());
        this.l = ((RelativeLayout) this.c.findViewById(2131493441));
        this.m = ((CoverLoadingView) this.l.findViewById(2131493604));
        this.n = ((TextView) this.l.findViewById(2131493605));
        this.o = ((TextView) this.l.findViewById(2131493606));
        this.p = ((ImageView) this.l.findViewById(2131493607));
        this.p.setOnClickListener(new B(this));
        if (as.c())
            h();
        this.l.setOnClickListener(new C(this));
        return this.c;
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.E != null) {
            as.b(this.E);
            this.E = null;
        }
        i.a().b(this);
    }

    @com.squareup.a.l
    public void onDownloadProgress(com.clilystudio.netbook.event.I paramI) {
        if (this.k == 0)
            this.j.notifyDataSetChanged();
    }

    @com.squareup.a.l
    public void onFeedAdded(com.clilystudio.netbook.event.l paraml) {
        a(paraml.b(), paraml.a());
    }

    @com.squareup.a.l
    public void onFeedRemoved(com.clilystudio.netbook.event.n paramn) {
        k();
        com.clilystudio.netbook.hpay100.a_Pack.a.r(paramn.b());
        com.clilystudio.netbook.hpay100.a_Pack.a.x(paramn.b());
    }

    @com.squareup.a.l
    public void onFeedSettingChanged(m paramm) {
        this.d.setRefreshing();
    }

    @com.squareup.a.l
    public void onFocusBookEvent(com.clilystudio.netbook.event.p paramp) {
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

    @com.squareup.a.l
    public void onGenderIntroEvent(r paramr) {
        int i1 = paramr.a();
        System.out.println("type : " + i1);
        if (i1 == 0)
            b(3);
        do {
            return;
            if (i1 != 1)
                continue;
            new I(this, getActivity()).b(new String[]{"male"});
            return;
        }
        while (i1 != 2);
        new I(this, getActivity()).b(new String[]{"female"});
    }

    @com.squareup.a.l
    public void onHideAdEvent(s params) {
        k();
        if ((!am.r(getActivity())) && (this.g != null) && (this.i != null) && (this.i.postLink != null) && ((this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game"))))
            this.e.removeHeaderView(this.g);
    }

    public void onPause() {
        super.onPause();
        if (this.j.a())
            e();
        com.clilystudio.netbook.util.c.a().c();
    }

    public void onResume() {
        super.onResume();
        List localList;
        if (!com.clilystudio.netbook.hpay100.a_Pack.a.A(getActivity())) {
            localList = this.j.f();
            if ((localList != null) && (!localList.isEmpty()))
                break label41;
        }
        label41:
        Advert localAdvert;
        while (true) {
            this.A = false;
            return;
            localAdvert = com.clilystudio.netbook.util.c.a().a("top");
            if ((localAdvert != null) && (a(getActivity(), 0)))
                break;
            com.clilystudio.netbook.hpay100.a_Pack.a.a(getActivity(), null);
        }
        BookShelf localBookShelf = (BookShelf) localList.get(0);
        if (localBookShelf.getAdvert() == null)
            a(localList, 0, localAdvert);
        while (true) {
            this.j.notifyDataSetChanged();
            com.clilystudio.netbook.hpay100.a_Pack.a.a(getActivity(), localAdvert);
            break;
            if (localAdvert.equals(localBookShelf.getAdvert()))
                continue;
            localAdvert.setPosition("shelf_top");
            localBookShelf.setAdvert(localAdvert);
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

    @com.squareup.a.l
    public void onShelfUpdated(com.clilystudio.netbook.event.A paramA) {
        if ((paramA.a() == 0) && (this.z) && (am.p(getActivity()))) {
            if (!this.A)
                com.clilystudio.netbook.hpay100.a_Pack.a.a(getActivity());
            return;
        }
        k();
    }

    @com.squareup.a.l
    public void onShowThirdAd(com.clilystudio.netbook.event.B paramB) {
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
                    while ((paramB == null) || (!am.q(getActivity())) || ((!paramB.b().equals("top")) && (!paramB.b().equals("bookshelf"))));
                    localList = this.j.f();
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
                this.j.notifyDataSetChanged();
                return;
                i1 = 4;
                break;
            }
        }
        while (!b(localList, i1));
        ((BookShelf) localList.get(i1)).setAdvert(localAdvert);
        this.j.notifyDataSetChanged();
    }

    @com.squareup.a.l
    public void onUpdateAlbum(F paramF) {
        i();
        Log.i(a, paramF.toString());
        long l1 = paramF.a();
        if (this.r == null)
            this.r = new Album();
        this.r.setId(l1);
        this.s = paramF.b();
    }

    public void setUserVisibleHint(boolean paramBoolean) {
        super.setUserVisibleHint(paramBoolean);
        if (!paramBoolean)
            if (this.j.a())
                e();
        do
            return;
        while ((this.j == null) || (this.j.f() == null));
        a(this.j.f());
    }
}

