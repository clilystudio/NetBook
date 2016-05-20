package com.clilystudio.app.netbook.ui.home;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.app.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.app.netbook.db.AudioRecord;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.app.netbook.event.F;
import com.clilystudio.app.netbook.event.g;
import com.clilystudio.app.netbook.event.h;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.m;
import com.clilystudio.app.netbook.event.r;
import com.clilystudio.app.netbook.event.s;
import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.model.BookFeed;
import com.clilystudio.app.netbook.model.BookShelf;
import com.clilystudio.app.netbook.model.ShelfMsg;
import com.clilystudio.app.netbook.model.TxtFileObject;
import com.clilystudio.app.netbook.util.UmengGameTracer;
import com.clilystudio.app.netbook.util.UmengGameTracer.From;
import com.clilystudio.app.netbook.util.adutil.k;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.widget.CoverLoadingView;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HomeShelfFragment extends HomeFragment
  implements AbsListView.OnScrollListener
{
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

  private void a(int paramInt)
  {
    com.clilystudio.app.netbook.util.c.a().b();
    com.arcsoft.hpay100.a.a.b(getActivity(), "DELETE_SHELF_AD_KEY" + paramInt, new Date().getTime());
    k();
    com.umeng.a.b.a(getActivity(), "ad_delete_shelf");
  }

  private void a(BookFile paramBookFile)
  {
    TxtFileObject.delete(paramBookFile);
    k();
    new u(this, paramBookFile.getFilePath()).start();
  }

  private void a(BookReadRecord paramBookReadRecord, boolean paramBoolean)
  {
    com.arcsoft.hpay100.a.a.t(paramBookReadRecord.getBookId());
    BookReadRecord.addAccountInfo(paramBookReadRecord);
    if (paramBoolean)
    {
      k();
      com.arcsoft.hpay100.a.a.w(paramBookReadRecord.getBookId());
    }
  }

  private void a(BookShelf paramBookShelf, boolean paramBoolean)
  {
    if (paramBookShelf.getBookRecord() != null)
    {
      BookReadRecord localBookReadRecord = paramBookShelf.getBookRecord();
      String str = localBookReadRecord.getBookId();
      BookReadRecord.delete(localBookReadRecord);
      a(str);
      if (paramBoolean)
        b(str);
      a(str, localBookReadRecord.getTitle(), localBookReadRecord.isRecommended());
    }
    do
    {
      return;
      if (paramBookShelf.getTxt() != null)
      {
        a(paramBookShelf.getTxt());
        return;
      }
      if (paramBookShelf.getType() == 1)
      {
        a(paramBookShelf.getAdIndex());
        return;
      }
    }
    while (paramBookShelf.getType() != 4);
    paramBookShelf.getAlbum().delete();
    k();
  }

  private void a(Track paramTrack)
  {
    SubordinatedAlbum localSubordinatedAlbum = paramTrack.getAlbum();
    if (localSubordinatedAlbum != null)
    {
      e.a(localSubordinatedAlbum.getAlbumTitle());
      this.n.setText(localSubordinatedAlbum.getAlbumTitle());
    }
    while (TextUtils.isEmpty(paramTrack.getCoverUrlSmall()))
    {
      this.m.setImageResource(2130837767);
      return;
      e.a(paramTrack.getTrackTitle());
      this.n.setText(paramTrack.getTrackTitle());
    }
    this.m.setImageUrl(paramTrack.getCoverUrlSmall());
  }

  private void a(String paramString)
  {
    k();
    com.arcsoft.hpay100.a.a.t(paramString);
    i.a().c(new BookShelfRefreshEvent());
    com.arcsoft.hpay100.a.a.v(paramString);
  }

  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramBoolean)
      com.umeng.a.b.a(getActivity(), "book_recommend_delete_click", paramString2);
    com.a.a.a.b(getActivity(), paramString1, com.arcsoft.hpay100.a.a.p(getActivity()));
  }

  private void a(List<BookShelf> paramList)
  {
    if ((!paramList.isEmpty()) && (am.q(getActivity())))
    {
      c(paramList, 0);
      if (com.arcsoft.hpay100.a.a.F(getActivity()))
      {
        com.clilystudio.app.netbook.util.c.a().c();
        c(paramList, 4);
      }
    }
  }

  private void a(List<BookShelf> paramList, int paramInt, Advert paramAdvert)
  {
    if (b(paramList, paramInt))
    {
      BookShelf localBookShelf2 = (BookShelf)paramList.get(paramInt);
      localBookShelf2.setAdvert(paramAdvert);
      localBookShelf2.setAdIndex(paramInt);
      this.j.notifyDataSetChanged();
      if (paramInt <= 0)
        break label111;
    }
    label111: for (String str = "shelf_five"; ; str = "shelf_top")
    {
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

  private void a(List<BookShelf> paramList, List<BookReadRecord> paramList1)
  {
    BookFeed localBookFeed = new BookFeed();
    List localList = BookReadRecord.getAllFeedFat();
    Iterator localIterator = paramList1.iterator();
    long l1 = 0L;
    long l2;
    while (localIterator.hasNext())
    {
      BookReadRecord localBookReadRecord = (BookReadRecord)localIterator.next();
      if (localBookReadRecord.lastActionTime == 0L)
        break label229;
      l2 = localBookReadRecord.lastActionTime;
      if (l1 == 0L)
        l1 = l2;
      else
        if (l1 >= l2)
          break label229;
    }
    while (true)
    {
      l1 = l2;
      break;
      if (localList.isEmpty())
      {
        localBookFeed.setFat(false);
        String str2 = getString(2131034505);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(paramList1.size());
        localBookFeed.setTitle(String.format(str2, arrayOfObject2));
      }
      while (true)
      {
        BookShelf localBookShelf = new BookShelf();
        localBookShelf.setBookFeed(localBookFeed);
        localBookFeed.setLastActionTime(l1);
        paramList.add(localBookShelf);
        return;
        localBookFeed.setFat(true);
        String str1 = getString(2131034504);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = ((BookReadRecord)localList.get(0)).getTitle();
        localBookFeed.setTitle(String.format(str1, arrayOfObject1));
      }
      label229: l2 = l1;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.p.setImageResource(2130837584);
      return;
    }
    this.p.setImageResource(2130837925);
  }

  private static boolean a(Context paramContext, int paramInt)
  {
    long l1 = com.arcsoft.hpay100.a.a.a(paramContext, "DELETE_SHELF_AD_KEY" + paramInt, 0L);
    return new Date().getTime() - l1 > 86400000L;
  }

  private static boolean a(List<BookShelf> paramList, int paramInt)
  {
    if (paramInt >= paramList.size())
      return false;
    if ((paramInt == 0) && (!paramList.isEmpty()) && (((BookShelf)paramList.get(0)).getType() != 1))
      return true;
    if ((paramInt > 0) && (paramList.size() >= 5) && (((BookShelf)paramList.get(0)).getType() == 1) && (((BookShelf)paramList.get(4)).getType() != 1))
      return true;
    return (paramInt > 0) && (paramList.size() >= 4) && (((BookShelf)paramList.get(0)).getType() != 1) && (((BookShelf)paramList.get(4)).getType() != 1);
  }

  private static int b(List<BookShelf> paramList)
  {
    int i1 = 0;
    List localList = TxtFileObject.getTxtFiles();
    if ((localList == null) || (localList.isEmpty()))
      return 0;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      BookFile localBookFile = (BookFile)localIterator1.next();
      BookShelf localBookShelf4 = new BookShelf();
      localBookShelf4.setTxt(localBookFile);
      if (localBookFile.isTop())
        localArrayList2.add(localBookShelf4);
      else
        localArrayList1.add(localBookShelf4);
    }
    Iterator localIterator2 = localArrayList1.iterator();
    label177: label364: 
    while (true)
    {
      BookShelf localBookShelf2;
      int i2;
      if (localIterator2.hasNext())
      {
        localBookShelf2 = (BookShelf)localIterator2.next();
        Date localDate = localBookShelf2.getTxt().getUpdated();
        if (localDate == null)
        {
          paramList.add(localBookShelf2);
        }
        else
        {
          i2 = 0;
          if (i2 < paramList.size())
          {
            BookShelf localBookShelf3 = (BookShelf)paramList.get(i2);
            BookReadRecord localBookReadRecord = localBookShelf3.getBookRecord();
            if ((localBookReadRecord != null) && (!localBookReadRecord.isTop()) && ((localBookShelf3.getType() == 0) || (localBookShelf3.getType() == 2)) && (localDate.getTime() > localBookReadRecord.getUpdated().getTime()))
              paramList.add(i2, localBookShelf2);
          }
        }
      }
      else
      {
        for (int i3 = 1; ; i3 = 0)
        {
          if (i3 != 0)
            break label364;
          paramList.add(localBookShelf2);
          break;
          i2++;
          break label177;
          Iterator localIterator3 = paramList.iterator();
          while (localIterator3.hasNext())
          {
            BookShelf localBookShelf1 = (BookShelf)localIterator3.next();
            if (localBookShelf1.getType() == 0)
            {
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

  public static HomeShelfFragment b()
  {
    return new HomeShelfFragment();
  }

  private void b(int paramInt)
  {
    switch (paramInt)
    {
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

  private void b(String paramString)
  {
    new v(this, paramString).start();
  }

  private static boolean b(List<BookShelf> paramList, int paramInt)
  {
    if (paramInt >= paramList.size())
      return false;
    if ((paramInt == 0) && (!paramList.isEmpty()) && (((BookShelf)paramList.get(0)).getType() == 1))
      return true;
    if ((paramInt > 0) && (paramList.size() >= 5) && (((BookShelf)paramList.get(0)).getType() == 1) && (((BookShelf)paramList.get(4)).getType() == 1))
      return true;
    return (paramInt > 0) && (paramList.size() >= 4) && (((BookShelf)paramList.get(0)).getType() != 1) && (((BookShelf)paramList.get(4)).getType() == 1);
  }

  private void c(List<BookShelf> paramList, int paramInt)
  {
    String str1;
    String str2;
    if (paramInt == 0)
    {
      str1 = "top";
      if (paramInt != 0)
        break label107;
      str2 = "rate_zssq_advert_bookshelf_top";
      label17: Advert localAdvert = com.clilystudio.app.netbook.util.c.a().a(str1);
      if ((localAdvert == null) || (!a(getActivity(), paramInt)) || (!com.arcsoft.hpay100.a.a.w(getActivity(), str2)))
        break label115;
      if (getActivity() != null)
        new UmengGameTracer(getActivity(), UmengGameTracer.From.Bookshelf).a(localAdvert.get_id());
      localAdvert.setType("promotion");
      a(paramList, paramInt, localAdvert);
    }
    while (true)
    {
      return;
      str1 = "bookshelf";
      break;
      label107: str2 = "rate_zssq_advert_bookshelf_five";
      break label17;
      label115: if ((com.arcsoft.hpay100.a.a.A(getActivity())) && (com.arcsoft.hpay100.a.a.t(getActivity())))
      {
        getActivity();
        if ((k.c()) || (k.b()));
        for (int i1 = 1; (i1 != 0) && (a(getActivity(), paramInt)); i1 = 0)
        {
          new com.clilystudio.app.netbook.util.adutil.n().a(getActivity(), str1);
          return;
        }
      }
    }
  }

  private void g()
  {
    this.l.setVisibility(0);
    this.e.removeFooterView(this.h);
    this.e.addFooterView(this.h);
  }

  private void h()
  {
    g();
    a(true);
    a((Track)as.e());
  }

  private void i()
  {
    long l1 = new Date().getTime();
    if (l1 - this.B < 500L)
    {
      this.B = l1;
      return;
    }
    this.B = l1;
    try
    {
      List localList2 = j();
      localList1 = localList2;
      if (localList1 != null)
      {
        this.j.a(localList1);
        if ((localList1 != null) && (!localList1.isEmpty()))
        {
          b(1);
          if (this.b)
            this.d.setRefreshing();
          this.b = false;
          new J(this, (byte)0).b(new Void[0]);
          return;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        List localList1;
        if ((localException.getMessage() != null) && (localException.getMessage().contains("not attached to Activity")))
        {
          com.umeng.a.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity");
          localList1 = null;
        }
        else
        {
          com.umeng.a.b.a(getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:" + localException.getMessage());
          localList1 = null;
        }
      }
      if (am.p(getActivity()))
      {
        if ((!am.g()) && (!this.A))
        {
          com.arcsoft.hpay100.a.a.a(getActivity());
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
  private List<BookShelf> j()
  {
    // Byte code:
    //   0: new 704	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 705	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   12: ldc_w 1077
    //   15: iconst_1
    //   16: invokestatic 458	com/arcsoft/hpay100/a/a:a	(Landroid/content/Context;Ljava/lang/String;I)I
    //   19: istore_2
    //   20: iload_2
    //   21: ifne +189 -> 210
    //   24: invokestatic 1080	com/ushaqi/zhuishushenqi/db/BookReadRecord:getAllWithTopNoFeed	()Ljava/util/List;
    //   27: astore_3
    //   28: invokestatic 1083	com/ushaqi/zhuishushenqi/db/BookReadRecord:getAllFeeding	()Ljava/util/List;
    //   31: astore 4
    //   33: aload 4
    //   35: invokeinterface 601 1 0
    //   40: ifne +177 -> 217
    //   43: iconst_1
    //   44: istore 5
    //   46: lconst_0
    //   47: lstore 6
    //   49: iload 5
    //   51: ifeq +18 -> 69
    //   54: aload_0
    //   55: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   58: ldc_w 761
    //   61: invokestatic 759	java/lang/System:currentTimeMillis	()J
    //   64: invokestatic 1085	com/arcsoft/hpay100/a/a:c	(Landroid/content/Context;Ljava/lang/String;J)J
    //   67: lstore 6
    //   69: aload_3
    //   70: invokeinterface 523 1 0
    //   75: astore 8
    //   77: iconst_0
    //   78: istore 9
    //   80: aload 8
    //   82: invokeinterface 528 1 0
    //   87: ifeq +136 -> 223
    //   90: aload 8
    //   92: invokeinterface 532 1 0
    //   97: checkcast 218	com/ushaqi/zhuishushenqi/db/BookReadRecord
    //   100: astore 24
    //   102: aload 24
    //   104: invokevirtual 475	com/ushaqi/zhuishushenqi/db/BookReadRecord:getUpdated	()Ljava/util/Date;
    //   107: invokevirtual 182	java/util/Date:getTime	()J
    //   110: lstore 25
    //   112: iload 9
    //   114: ifne +26 -> 140
    //   117: iload 5
    //   119: ifeq +21 -> 140
    //   122: lload 6
    //   124: lload 25
    //   126: lcmp
    //   127: iflt +13 -> 140
    //   130: aload_0
    //   131: aload_1
    //   132: aload 4
    //   134: invokespecial 1087	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:a	(Ljava/util/List;Ljava/util/List;)V
    //   137: iconst_1
    //   138: istore 9
    //   140: new 109	com/ushaqi/zhuishushenqi/model/BookShelf
    //   143: dup
    //   144: invokespecial 635	com/ushaqi/zhuishushenqi/model/BookShelf:<init>	()V
    //   147: astore 27
    //   149: aload 27
    //   151: aload 24
    //   153: invokevirtual 1090	com/ushaqi/zhuishushenqi/model/BookShelf:setBookRecord	(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    //   156: aload 24
    //   158: getfield 1094	com/ushaqi/zhuishushenqi/db/BookReadRecord:readTime	Ljava/util/Date;
    //   161: ifnull +16 -> 177
    //   164: aload 27
    //   166: aload 24
    //   168: getfield 1094	com/ushaqi/zhuishushenqi/db/BookReadRecord:readTime	Ljava/util/Date;
    //   171: invokevirtual 182	java/util/Date:getTime	()J
    //   174: invokevirtual 1097	com/ushaqi/zhuishushenqi/model/BookShelf:setLastRead	(J)V
    //   177: aload 24
    //   179: invokevirtual 475	com/ushaqi/zhuishushenqi/db/BookReadRecord:getUpdated	()Ljava/util/Date;
    //   182: ifnull +16 -> 198
    //   185: aload 27
    //   187: aload 24
    //   189: invokevirtual 475	com/ushaqi/zhuishushenqi/db/BookReadRecord:getUpdated	()Ljava/util/Date;
    //   192: invokevirtual 182	java/util/Date:getTime	()J
    //   195: invokevirtual 1100	com/ushaqi/zhuishushenqi/model/BookShelf:setLastUpdate	(J)V
    //   198: aload_1
    //   199: aload 27
    //   201: invokeinterface 684 2 0
    //   206: pop
    //   207: goto -127 -> 80
    //   210: invokestatic 1103	com/ushaqi/zhuishushenqi/db/BookReadRecord:getAllWithTopNoFeedByRead	()Ljava/util/List;
    //   213: astore_3
    //   214: goto -186 -> 28
    //   217: iconst_0
    //   218: istore 5
    //   220: goto -174 -> 46
    //   223: aload_0
    //   224: aload_1
    //   225: invokestatic 1105	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:b	(Ljava/util/List;)I
    //   228: putfield 83	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:v	I
    //   231: iload 9
    //   233: ifne +15 -> 248
    //   236: iload 5
    //   238: ifeq +10 -> 248
    //   241: aload_0
    //   242: aload_1
    //   243: aload 4
    //   245: invokespecial 1087	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:a	(Ljava/util/List;Ljava/util/List;)V
    //   248: aload_0
    //   249: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   252: ldc_w 1107
    //   255: invokestatic 1110	com/umeng/a/b:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   258: astore 10
    //   260: aload 10
    //   262: ifnull +66 -> 328
    //   265: ldc_w 1112
    //   268: aload 10
    //   270: invokevirtual 1115	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   273: ifeq +55 -> 328
    //   276: iconst_1
    //   277: istore 11
    //   279: invokestatic 989	com/ushaqi/zhuishushenqi/db/AudioRecord:findAll	()Ljava/util/List;
    //   282: invokeinterface 523 1 0
    //   287: astore 12
    //   289: aload 12
    //   291: invokeinterface 528 1 0
    //   296: ifeq +106 -> 402
    //   299: aload 12
    //   301: invokeinterface 532 1 0
    //   306: checkcast 267	com/ushaqi/zhuishushenqi/db/AudioRecord
    //   309: astore 21
    //   311: iload 11
    //   313: ifeq +21 -> 334
    //   316: aload 21
    //   318: invokevirtual 269	com/ushaqi/zhuishushenqi/db/AudioRecord:delete	()V
    //   321: aload_0
    //   322: invokespecial 189	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:k	()V
    //   325: goto -36 -> 289
    //   328: iconst_0
    //   329: istore 11
    //   331: goto -52 -> 279
    //   334: new 109	com/ushaqi/zhuishushenqi/model/BookShelf
    //   337: dup
    //   338: invokespecial 635	com/ushaqi/zhuishushenqi/model/BookShelf:<init>	()V
    //   341: astore 22
    //   343: aload 22
    //   345: aload 21
    //   347: invokevirtual 1119	com/ushaqi/zhuishushenqi/model/BookShelf:setAlbum	(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    //   350: aload 22
    //   352: aload 21
    //   354: invokevirtual 1120	com/ushaqi/zhuishushenqi/db/AudioRecord:getLastRead	()J
    //   357: invokevirtual 1097	com/ushaqi/zhuishushenqi/model/BookShelf:setLastRead	(J)V
    //   360: aload 22
    //   362: aload 21
    //   364: invokevirtual 1121	com/ushaqi/zhuishushenqi/db/AudioRecord:getLastUpdate	()J
    //   367: invokevirtual 1100	com/ushaqi/zhuishushenqi/model/BookShelf:setLastUpdate	(J)V
    //   370: aload 22
    //   372: invokevirtual 714	com/ushaqi/zhuishushenqi/model/BookShelf:isTop	()Z
    //   375: ifeq +15 -> 390
    //   378: aload_1
    //   379: iconst_0
    //   380: aload 22
    //   382: invokeinterface 639 3 0
    //   387: goto -98 -> 289
    //   390: aload_1
    //   391: aload 22
    //   393: invokeinterface 684 2 0
    //   398: pop
    //   399: goto -110 -> 289
    //   402: aload_1
    //   403: new 1123	com/ushaqi/zhuishushenqi/ui/home/G
    //   406: dup
    //   407: aload_0
    //   408: iload_2
    //   409: invokespecial 1124	com/ushaqi/zhuishushenqi/ui/home/G:<init>	(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V
    //   412: invokestatic 1129	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   415: aload_0
    //   416: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   419: ldc_w 1131
    //   422: iconst_0
    //   423: invokestatic 780	com/arcsoft/hpay100/a/a:a	(Landroid/content/Context;Ljava/lang/String;Z)Z
    //   426: ifne +163 -> 589
    //   429: aload_3
    //   430: invokeinterface 463 1 0
    //   435: anewarray 323	java/lang/String
    //   438: astore 17
    //   440: iconst_0
    //   441: istore 18
    //   443: iload 18
    //   445: aload_3
    //   446: invokeinterface 463 1 0
    //   451: if_icmpge +64 -> 515
    //   454: aload 17
    //   456: iload 18
    //   458: aload_3
    //   459: iload 18
    //   461: invokeinterface 466 2 0
    //   466: checkcast 218	com/ushaqi/zhuishushenqi/db/BookReadRecord
    //   469: invokevirtual 221	com/ushaqi/zhuishushenqi/db/BookReadRecord:getBookId	()Ljava/lang/String;
    //   472: aastore
    //   473: iinc 18 1
    //   476: goto -33 -> 443
    //   479: astore 13
    //   481: aload_0
    //   482: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   485: ldc_w 1058
    //   488: new 164	java/lang/StringBuilder
    //   491: dup
    //   492: ldc_w 1133
    //   495: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   498: aload 13
    //   500: invokevirtual 1051	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   503: invokevirtual 992	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: invokestatic 590	com/umeng/a/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   512: goto -97 -> 415
    //   515: aload 17
    //   517: invokestatic 1136	com/arcsoft/hpay100/a/a:a	([Ljava/lang/String;)V
    //   520: aload 4
    //   522: invokeinterface 463 1 0
    //   527: anewarray 323	java/lang/String
    //   530: astore 19
    //   532: iconst_0
    //   533: istore 20
    //   535: iload 20
    //   537: aload 4
    //   539: invokeinterface 463 1 0
    //   544: if_icmpge +29 -> 573
    //   547: aload 19
    //   549: iload 20
    //   551: aload 4
    //   553: iload 20
    //   555: invokeinterface 466 2 0
    //   560: checkcast 218	com/ushaqi/zhuishushenqi/db/BookReadRecord
    //   563: invokevirtual 221	com/ushaqi/zhuishushenqi/db/BookReadRecord:getBookId	()Ljava/lang/String;
    //   566: aastore
    //   567: iinc 20 1
    //   570: goto -35 -> 535
    //   573: aload 19
    //   575: invokestatic 1138	com/arcsoft/hpay100/a/a:b	([Ljava/lang/String;)V
    //   578: aload_0
    //   579: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   582: ldc_w 1131
    //   585: iconst_1
    //   586: invokestatic 811	com/arcsoft/hpay100/a/a:b	(Landroid/content/Context;Ljava/lang/String;Z)V
    //   589: aload_0
    //   590: aload_1
    //   591: invokespecial 1139	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:a	(Ljava/util/List;)V
    //   594: aload_1
    //   595: areturn
    //   596: astore 14
    //   598: aload_0
    //   599: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   602: ldc_w 1058
    //   605: new 164	java/lang/StringBuilder
    //   608: dup
    //   609: ldc_w 1133
    //   612: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   615: aload 14
    //   617: invokevirtual 1051	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   620: invokevirtual 992	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   626: invokestatic 590	com/umeng/a/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   629: aload 14
    //   631: invokevirtual 1051	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   634: ldc_w 1141
    //   637: invokevirtual 1056	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   640: ifeq -51 -> 589
    //   643: new 1143	com/activeandroid/util/SQLiteUtils
    //   646: dup
    //   647: invokespecial 1144	com/activeandroid/util/SQLiteUtils:<init>	()V
    //   650: pop
    //   651: ldc_w 1146
    //   654: invokestatic 1149	com/activeandroid/util/SQLiteUtils:execSql	(Ljava/lang/String;)V
    //   657: goto -68 -> 589
    //   660: astore 16
    //   662: aload_0
    //   663: invokevirtual 162	com/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   666: ldc_w 1058
    //   669: new 164	java/lang/StringBuilder
    //   672: dup
    //   673: ldc_w 1151
    //   676: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   679: aload 14
    //   681: invokevirtual 1051	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   684: invokevirtual 992	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   687: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   690: invokestatic 590	com/umeng/a/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   693: goto -104 -> 589
    //
    // Exception table:
    //   from	to	target	type
    //   402	415	479	java/lang/Exception
    //   415	440	596	java/lang/Exception
    //   443	473	596	java/lang/Exception
    //   515	532	596	java/lang/Exception
    //   535	567	596	java/lang/Exception
    //   573	589	596	java/lang/Exception
    //   643	657	660	java/lang/Exception
  }

  private void k()
  {
    if (getActivity() != null)
      i();
  }

  public final String a()
  {
    return "home_shelf";
  }

  public final boolean c()
  {
    return this.j.a();
  }

  public final void d()
  {
    com.umeng.a.b.a(getActivity(), "home_shelf_bulk_operation");
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

  public final void e()
  {
    if (this.r != null)
      this.l.setVisibility(0);
    if ((am.r(getActivity())) || ((this.g != null) && (this.i != null) && (this.i.postLink != null) && ((!this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game")))))
    {
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

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }

  @com.squareup.a.l
  public void onAudioBookExitEvent(com.clilystudio.app.netbook.event.b paramb)
  {
    a(false);
    this.l.setVisibility(8);
    this.e.removeFooterView(this.h);
    this.r = null;
  }

  @com.squareup.a.l
  public void onBookAdded(com.clilystudio.app.netbook.event.c paramc)
  {
    if (paramc.a())
      k();
    com.arcsoft.hpay100.a.a.r(paramc.b());
    FragmentActivity localFragmentActivity = getActivity();
    String str = paramc.b();
    HashMap localHashMap = new HashMap();
    localHashMap.put("uid", e.c(localFragmentActivity));
    com.a.a.a.a(localFragmentActivity, str, 0.0D, 1, localHashMap);
  }

  @com.squareup.a.l
  public void onBookRead(g paramg)
  {
    k();
  }

  @com.squareup.a.l
  public void onBookRemoved(h paramh)
  {
    a(paramh.b());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i.a().a(this);
    if (this.q == null)
      this.q = as.b();
    as.a(this.E);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Log.i(a, "HomeShelfFragment onCreateView");
    (60.0F * (getActivity().getResources().getDisplayMetrics().densityDpi / 160.0F));
    this.c = paramLayoutInflater.inflate(2130903213, paramViewGroup, false);
    this.d = ((PullToRefreshListView)this.c.findViewById(2131493440));
    this.e = ((ListView)this.d.h());
    this.d.setOnScrollListener(this);
    this.f = this.c.findViewById(2131493361);
    this.h = LayoutInflater.from(getActivity()).inflate(2130903256, this.e, false);
    this.c.findViewById(2131493362).setOnClickListener(new n(this));
    this.w = ((RelativeLayout)this.c.findViewById(2131493442));
    this.w.setOnTouchListener(new y(this));
    this.x = ((Button)this.w.findViewById(2131492907));
    this.y = ((Button)this.w.findViewById(2131493990));
    this.y.setOnClickListener(new z(this));
    this.x.setOnClickListener(new A(this));
    this.d.setOnRefreshListener(new E(this));
    if (com.arcsoft.hpay100.a.a.i())
      this.e.setFooterDividersEnabled(false);
    View localView = LayoutInflater.from(getActivity()).inflate(2130903354, null);
    this.e.addFooterView(localView);
    com.arcsoft.hpay100.a.a.a(getActivity(), this.e);
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
    this.l = ((RelativeLayout)this.c.findViewById(2131493441));
    this.m = ((CoverLoadingView)this.l.findViewById(2131493604));
    this.n = ((TextView)this.l.findViewById(2131493605));
    this.o = ((TextView)this.l.findViewById(2131493606));
    this.p = ((ImageView)this.l.findViewById(2131493607));
    this.p.setOnClickListener(new B(this));
    if (as.c())
      h();
    this.l.setOnClickListener(new C(this));
    return this.c;
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.E != null)
    {
      as.b(this.E);
      this.E = null;
    }
    i.a().b(this);
  }

  @com.squareup.a.l
  public void onDownloadProgress(com.clilystudio.app.netbook.event.I paramI)
  {
    if (this.k == 0)
      this.j.notifyDataSetChanged();
  }

  @com.squareup.a.l
  public void onFeedAdded(com.clilystudio.app.netbook.event.l paraml)
  {
    a(paraml.b(), paraml.a());
  }

  @com.squareup.a.l
  public void onFeedRemoved(com.clilystudio.app.netbook.event.n paramn)
  {
    k();
    com.arcsoft.hpay100.a.a.r(paramn.b());
    com.arcsoft.hpay100.a.a.x(paramn.b());
  }

  @com.squareup.a.l
  public void onFeedSettingChanged(m paramm)
  {
    this.d.setRefreshing();
  }

  @com.squareup.a.l
  public void onFocusBookEvent(com.clilystudio.app.netbook.event.p paramp)
  {
    if (paramp.a())
    {
      AudioRecord localAudioRecord = paramp.b();
      localAudioRecord.setUpdateReaded(false);
      localAudioRecord.setLastRead(new Date().getTime());
      localAudioRecord.save();
    }
    while (true)
    {
      i();
      return;
      AudioRecord.cancelFollow(paramp.b().getBookId());
    }
  }

  @com.squareup.a.l
  public void onGenderIntroEvent(r paramr)
  {
    int i1 = paramr.a();
    System.out.println("type : " + i1);
    if (i1 == 0)
      b(3);
    do
    {
      return;
      if (i1 == 1)
      {
        new I(this, getActivity()).b(new String[] { "male" });
        return;
      }
    }
    while (i1 != 2);
    new I(this, getActivity()).b(new String[] { "female" });
  }

  @com.squareup.a.l
  public void onHideAdEvent(s params)
  {
    k();
    if ((!am.r(getActivity())) && (this.g != null) && (this.i != null) && (this.i.postLink != null) && ((this.i.postLink.startsWith("link")) || (this.i.postLink.startsWith("game"))))
      this.e.removeHeaderView(this.g);
  }

  public void onPause()
  {
    super.onPause();
    if (this.j.a())
      e();
    com.clilystudio.app.netbook.util.c.a().c();
  }

  public void onResume()
  {
    super.onResume();
    List localList;
    if (!com.arcsoft.hpay100.a.a.A(getActivity()))
    {
      localList = this.j.f();
      if ((localList != null) && (!localList.isEmpty()))
        break label41;
    }
    label41: Advert localAdvert;
    while (true)
    {
      this.A = false;
      return;
      localAdvert = com.clilystudio.app.netbook.util.c.a().a("top");
      if ((localAdvert != null) && (a(getActivity(), 0)))
        break;
      com.arcsoft.hpay100.a.a.a(getActivity(), null);
    }
    BookShelf localBookShelf = (BookShelf)localList.get(0);
    if (localBookShelf.getAdvert() == null)
      a(localList, 0, localAdvert);
    while (true)
    {
      this.j.notifyDataSetChanged();
      com.arcsoft.hpay100.a.a.a(getActivity(), localAdvert);
      break;
      if (!localAdvert.equals(localBookShelf.getAdvert()))
      {
        localAdvert.setPosition("shelf_top");
        localBookShelf.setAdvert(localAdvert);
      }
    }
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.A = true;
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    this.k = paramInt;
  }

  @com.squareup.a.l
  public void onShelfUpdated(com.clilystudio.app.netbook.event.A paramA)
  {
    if ((paramA.a() == 0) && (this.z) && (am.p(getActivity())))
    {
      if (!this.A)
        com.arcsoft.hpay100.a.a.a(getActivity());
      return;
    }
    k();
  }

  @com.squareup.a.l
  public void onShowThirdAd(com.clilystudio.app.netbook.event.B paramB)
  {
    if ((getActivity() == null) || (getActivity().isFinishing()));
    label17: List localList;
    Advert localAdvert;
    int i1;
    label158: label166: 
    do
    {
      do
      {
        do
        {
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
      if (paramB.b().equals("top"))
      {
        i1 = 0;
        localAdvert.setType("promotion");
        if (i1 != 0)
          break label158;
      }
      for (String str = "shelf_top"; ; str = "shelf_five")
      {
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
    ((BookShelf)localList.get(i1)).setAdvert(localAdvert);
    this.j.notifyDataSetChanged();
  }

  @com.squareup.a.l
  public void onUpdateAlbum(F paramF)
  {
    i();
    Log.i(a, paramF.toString());
    long l1 = paramF.a();
    if (this.r == null)
      this.r = new Album();
    this.r.setId(l1);
    this.s = paramF.b();
  }

  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    if (!paramBoolean)
      if (this.j.a())
        e();
    while ((this.j == null) || (this.j.f() == null))
      return;
    a(this.j.f());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.HomeShelfFragment
 * JD-Core Version:    0.6.2
 */