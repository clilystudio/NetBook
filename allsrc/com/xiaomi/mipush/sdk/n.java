package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.xmpush.thrift.q;
import java.util.ArrayList;
import java.util.Iterator;

public final class n
{
  private static n b;
  private static final ArrayList<o> e = new ArrayList();
  private boolean a = false;
  private Context c;
  private String d;
  private Intent f = null;

  private n(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.d = com.alipay.sdk.b.b.a(6);
    this.a = e();
  }

  public static n a(Context paramContext)
  {
    if (b == null)
      b = new n(paramContext);
    return b;
  }

  private final <T extends org.apache.thrift.b<T, ?>> void a(T paramT, com.xiaomi.xmpush.thrift.a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!g.a(this.c).g())
    {
      if (paramBoolean2)
      {
        o localo = new o();
        localo.a = paramT;
        localo.b = parama;
        localo.c = paramBoolean1;
        synchronized (e)
        {
          e.add(localo);
          if (e.size() > 10)
            e.remove(0);
          return;
        }
      }
      com.xiaomi.a.a.a.b.a("drop the message before initialization.");
      return;
    }
    Intent localIntent = f();
    byte[] arrayOfByte = com.arcsoft.hpay100.a.a.a(j.a(this.c, paramT, parama, paramBoolean1));
    if (arrayOfByte == null)
    {
      com.xiaomi.a.a.a.b.a("send message fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.SEND_MESSAGE");
    localIntent.putExtra("mipush_payload", arrayOfByte);
    this.c.startService(localIntent);
  }

  private boolean e()
  {
    PackageManager localPackageManager = this.c.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo("com.xiaomi.xmsf", 4);
      if (localPackageInfo == null)
        return false;
      int i = localPackageInfo.versionCode;
      if (i >= 105)
        return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private Intent f()
  {
    String str = this.c.getPackageName();
    if ((b()) && (!"com.xiaomi.xmsf".equals(str)))
    {
      Intent localIntent2 = new Intent();
      localIntent2.setPackage("com.xiaomi.xmsf");
      localIntent2.setClassName("com.xiaomi.xmsf", g());
      localIntent2.putExtra("mipush_app_package", str);
      this.c.getPackageManager().setComponentEnabledSetting(new ComponentName(this.c, XMPushService.class), 2, 1);
      return localIntent2;
    }
    this.c.getPackageManager().setComponentEnabledSetting(new ComponentName(this.c, XMPushService.class), 1, 1);
    Intent localIntent1 = new Intent(this.c, XMPushService.class);
    localIntent1.putExtra("mipush_app_package", str);
    return localIntent1;
  }

  private String g()
  {
    try
    {
      if (this.c.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106)
        return "com.xiaomi.push.service.XMPushService";
    }
    catch (Exception localException)
    {
    }
    return "com.xiaomi.xmsf.push.service.XMPushService";
  }

  public final void a()
  {
    this.c.startService(f());
  }

  public final void a(com.xiaomi.xmpush.thrift.j paramj, boolean paramBoolean)
  {
    this.f = null;
    Intent localIntent = f();
    byte[] arrayOfByte = com.arcsoft.hpay100.a.a.a(j.a(this.c, paramj, com.xiaomi.xmpush.thrift.a.a));
    if (arrayOfByte == null)
    {
      com.xiaomi.a.a.a.b.a("register fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.REGISTER_APP");
    localIntent.putExtra("mipush_app_id", g.a(this.c).b());
    localIntent.putExtra("mipush_payload", arrayOfByte);
    localIntent.putExtra("mipush_session", this.d);
    localIntent.putExtra("mipush_env_chanage", paramBoolean);
    localIntent.putExtra("mipush_env_type", g.a(this.c).k());
    if (com.xiaomi.a.a.c.a.b(this.c))
    {
      this.c.startService(localIntent);
      return;
    }
    this.f = localIntent;
  }

  public final void a(q paramq)
  {
    Intent localIntent = f();
    byte[] arrayOfByte = com.arcsoft.hpay100.a.a.a(j.a(this.c, paramq, com.xiaomi.xmpush.thrift.a.b));
    if (arrayOfByte == null)
    {
      com.xiaomi.a.a.a.b.a("unregister fail, because msgBytes is null.");
      return;
    }
    localIntent.setAction("com.xiaomi.mipush.UNREGISTER_APP");
    localIntent.putExtra("mipush_app_id", g.a(this.c).b());
    localIntent.putExtra("mipush_payload", arrayOfByte);
    this.c.startService(localIntent);
  }

  public final <T extends org.apache.thrift.b<T, ?>> void a(T paramT, com.xiaomi.xmpush.thrift.a parama)
  {
    if (!parama.equals(com.xiaomi.xmpush.thrift.a.a));
    for (boolean bool = true; ; bool = false)
    {
      a(paramT, parama, bool);
      return;
    }
  }

  public final <T extends org.apache.thrift.b<T, ?>> void a(T paramT, com.xiaomi.xmpush.thrift.a parama, boolean paramBoolean)
  {
    a(paramT, parama, paramBoolean, true);
  }

  public final boolean b()
  {
    return (this.a) && (1 == g.a(this.c).k());
  }

  public final void c()
  {
    if (this.f != null)
    {
      this.c.startService(this.f);
      this.f = null;
    }
  }

  public final void d()
  {
    synchronized (e)
    {
      Iterator localIterator = e.iterator();
      if (localIterator.hasNext())
      {
        o localo = (o)localIterator.next();
        a(localo.a, localo.b, localo.c, false);
      }
    }
    e.clear();
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.n
 * JD-Core Version:    0.6.0
 */