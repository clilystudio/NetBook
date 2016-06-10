package com.clilystudio.netbook.umeng.update.net;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
import android.os.SystemClock;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DownloadingService extends Service
{
  public static boolean b;
  private static final String c = DownloadingService.class.getName();
  private static Map<k, Messenger> h;
  private static SparseArray<s> i;
  private static Boolean m;
  e a;
  private NotificationManager d;
  private p e;
  private Context f;
  private Handler g;
  private Messenger j = new Messenger(new h(this));
  private v k;
  private boolean l = true;

  static
  {
    b = false;
    h = new HashMap();
    i = new SparseArray();
    m = Boolean.valueOf(false);
  }

  private void d()
  {
    Iterator localIterator = this.k.a().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Integer localInteger = (Integer)localIterator.next();
      this.d.cancel(localInteger.intValue());
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    u.a.b.c(c, "onBind ");
    return this.j.getBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    u.a.b.c(c, "onCreate ");
    this.d = ((NotificationManager)getSystemService("notification"));
    this.f = this;
    this.k = new v(this.f);
    this.e = new p(i, h, this.k);
    this.g = new a(this);
    this.a = new b(this);
  }

  public void onDestroy()
  {
    try
    {
      m.a(getApplicationContext()).a(259200);
      m.a(getApplicationContext()).finalize();
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        u.a.b.b(c, localException.getMessage());
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (paramIntent.getExtras() != null))
      this.e.a(this, paramIntent);
    if ((Build.VERSION.SDK_INT >= 19) && ((this.k.b()) || (this.l)));
    try
    {
      Intent localIntent = new Intent(getApplicationContext(), getClass());
      localIntent.setPackage(getPackageName());
      PendingIntent localPendingIntent = PendingIntent.getService(getApplicationContext(), 1, localIntent, 1073741824);
      ((AlarmManager)getApplicationContext().getSystemService("alarm")).set(3, 5000L + SystemClock.elapsedRealtime(), localPendingIntent);
      label114: if (this.l)
      {
        d();
        this.l = false;
      }
      return 1;
    }
    catch (Exception localException)
    {
      break label114;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.DownloadingService
 * JD-Core Version:    0.6.0
 */