package com.clilystudio.app.netbook.reader.dl;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.support.v4.content.LocalBroadcastManager;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.squareup.a.l;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.db.BookDlRecord;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.db.SourceRecord;
import com.clilystudio.app.netbook.event.d;
import com.clilystudio.app.netbook.model.ChapterLink;
import java.util.ArrayList;
import java.util.List;

public class BookDownloadService extends Service
{
  private String a;
  private String b;
  private int c;
  private int d;
  private int e;
  private int f;
  private ChapterLink[] g;
  private ArrayList<String> h;
  private Intent i = null;
  private boolean j = false;
  private com.clilystudio.app.netbook.reader.f k;
  private int l;
  private String m = null;
  private int n;
  private boolean o;

  private void a()
  {
    List localList = BookDlRecord.getAllPending();
    if (localList.size() > 0)
    {
      BookDlRecord localBookDlRecord = (BookDlRecord)localList.get(0);
      this.a = localBookDlRecord.getBookId();
      BookReadRecord localBookReadRecord = BookReadRecord.getOnShelf(this.a);
      if (localBookReadRecord == null)
      {
        g();
        return;
      }
      a(localBookDlRecord, 5);
      this.b = localBookDlRecord.getTocId();
      this.c = localBookDlRecord.getMode();
      this.d = localBookDlRecord.getStart();
      this.e = localBookDlRecord.getTotal();
      this.l = 0;
      this.f = 0;
      this.g = ((ChapterLink[])MyApplication.a_getInstance().e().get(this.a));
      if ((this.g != null) && (this.e > 0))
      {
        b();
        return;
      }
      a(localBookReadRecord);
      return;
    }
    stopSelf();
  }

  private void a(int paramInt)
  {
    a(BookDlRecord.get(this.a), paramInt);
  }

  private static void a(BookDlRecord paramBookDlRecord, int paramInt)
  {
    if (paramBookDlRecord != null)
    {
      paramBookDlRecord.setStatus(paramInt);
      paramBookDlRecord.save();
    }
    i.a().c(new com.clilystudio.app.netbook.event.I());
  }

  private void a(BookReadRecord paramBookReadRecord)
  {
    this.k = new com.clilystudio.app.netbook.reader.f(paramBookReadRecord);
    if (this.c == -1)
    {
      f localf1 = new f(this, (byte)0);
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = this.a;
      localf1.b(arrayOfString1);
      return;
    }
    String str2;
    String str1;
    if (a.h(this.c))
    {
      str2 = a.g(this.c);
      SourceRecord localSourceRecord = SourceRecord.get(this.a, str2);
      if ((localSourceRecord == null) || (localSourceRecord.getSourceId() == null))
      {
        f localf2 = new f(this, (byte)0);
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = this.a;
        localf2.b(arrayOfString2);
        return;
      }
      str1 = localSourceRecord.getSourceId();
    }
    while (true)
    {
      this.b = a.a(this.a, this.c, str1, this.b);
      this.k.a(this.b, str2, str1);
      new g(this, (byte)0).b(new Void[0]);
      return;
      str1 = null;
      str2 = null;
    }
  }

  private void b()
  {
    this.k = new com.clilystudio.app.netbook.reader.f(this.c);
    boolean bool = a.h(this.c);
    String str1 = null;
    if (bool)
    {
      String str2 = a.g(this.c);
      SourceRecord localSourceRecord = SourceRecord.get(this.a, str2);
      str1 = null;
      if (localSourceRecord != null)
      {
        str1 = localSourceRecord.getSourceId();
        String str3 = localSourceRecord.getSogouMd();
        this.k.a(str1, str3);
      }
    }
    this.b = a.a(this.a, this.c, str1, this.b);
    this.k.b(com.clilystudio.app.netbook.util.I.c);
    this.k.a(com.clilystudio.app.netbook.util.I.a);
    this.k.a(com.clilystudio.app.netbook.util.I.g);
    this.i.putExtra("SerDlStopFlag", 0);
    this.h = a.j(this.a, this.b);
    if (a.e() <= 10 * this.e << 1)
    {
      com.clilystudio.app.netbook.util.e.a(this, "SD卡剩余容量不足，请减少缓存数目或增加存储");
      stopSelf();
      return;
    }
    a(2);
    i.a().c(new d(this.a, 2));
    c();
  }

  private void c()
  {
    if ((this.j) || (this.g == null))
      return;
    int i1 = this.d + this.f;
    if ((i1 < this.g.length) && (this.f <= this.e))
    {
      ChapterLink localChapterLink = this.g[i1];
      boolean bool = localChapterLink.getUnreadble();
      String str = am_CommonUtils.e(localChapterLink.getLink());
      while ((bool) || (this.h.contains(str)))
      {
        this.f = (1 + this.f);
        i1 = this.d + this.f;
        if (i1 < this.g.length)
        {
          localChapterLink = this.g[i1];
          bool = localChapterLink.getUnreadble();
          str = am_CommonUtils.e(localChapterLink.getLink());
        }
        else
        {
          e();
          return;
        }
      }
      new e(this, localChapterLink, i1).b(new Void[0]);
      return;
    }
    e();
  }

  private void d()
  {
    this.i.putExtra("SerDlStopFlag", -2);
    h();
    a(3);
    a();
    i.a().c(new com.clilystudio.app.netbook.event.I());
  }

  private void e()
  {
    this.i.putExtra("SerDlStopFlag", -1);
    h();
    i.a().c(new d(this.a, 4));
    f();
    a();
  }

  private void f()
  {
    MyApplication.a_getInstance().e().remove(this.a);
    MyApplication.a_getInstance().f().remove(this.a);
    BookDlRecord.delete(this.a);
  }

  private void g()
  {
    f();
    a();
  }

  private void h()
  {
    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(this.i);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    i.a().a(this);
    this.i = new Intent("com.clilystudio.app.netbook.dlReceiver");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.RSSI_CHANGED");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.supplicant.CONNECTION_CHANGE");
    localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.PICK_WIFI_NETWORK");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.setPriority(1000);
    registerReceiver(new BookDownloadService.MyNetworkMonitor(this), localIntentFilter);
    a();
  }

  public void onDestroy()
  {
    this.j = true;
    i.a().b(this);
    super.onDestroy();
  }

  @l
  public void onDownloadStatus(d paramd)
  {
    switch (paramd.a())
    {
    default:
      return;
    case 3:
    }
    d();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.RSSI_CHANGED");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.supplicant.CONNECTION_CHANGE");
    localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.PICK_WIFI_NETWORK");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.setPriority(1000);
    registerReceiver(new BookDownloadService.MyNetworkMonitor(this), localIntentFilter);
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.dl.BookDownloadService
 * JD-Core Version:    0.6.2
 */