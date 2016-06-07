package com.xiaomi.push.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.smack.d.g;
import com.xiaomi.smack.packet.f.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class XMPushService extends Service
  implements com.xiaomi.smack.o
{
  private static int m;
  private com.xiaomi.smack.n a;
  private com.xiaomi.smack.a b;
  private X c;
  private long d = 0L;
  private com.xiaomi.smack.z e;
  private com.xiaomi.smack.b f;
  private com.xiaomi.smack.l g;
  private y h;
  private PacketSync i = null;
  private com.xiaomi.push.service.a.a j = null;
  private A k = null;
  private com.xiaomi.smack.p l = new n(this);

  static
  {
    com.xiaomi.network.f.a("app.chat.xiaomi.net", "58.68.235.232");
    com.xiaomi.network.f.a("app.chat.xiaomi.net", "app01.nodes.gslb.mi-idc.com");
    com.xiaomi.network.f.a("app.chat.xiaomi.net", "42.62.48.181");
    com.xiaomi.network.f.a("app.chat.xiaomi.net", "223.202.68.46");
    com.xiaomi.network.f.a("app.chat.xiaomi.net", "app02.nodes.gslb.mi-idc.com");
    com.xiaomi.smack.z.c = true;
    if ((com.xiaomi.a.a.b.a.a) || (com.xiaomi.a.a.b.a.c) || (com.xiaomi.a.a.b.a.b) || (com.xiaomi.a.a.b.a.d))
      com.xiaomi.a.a.a.b.a(0);
    m = 1;
  }

  private R a(String paramString, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra(U.k);
    R localR = u.a().b(paramString, str);
    if (localR == null)
      localR = new R(this);
    localR.h = paramIntent.getStringExtra(U.l);
    localR.b = paramIntent.getStringExtra(U.k);
    localR.c = paramIntent.getStringExtra(U.m);
    localR.a = paramIntent.getStringExtra(U.s);
    localR.f = paramIntent.getStringExtra(U.q);
    localR.g = paramIntent.getStringExtra(U.r);
    localR.e = paramIntent.getBooleanExtra(U.p, false);
    localR.i = paramIntent.getStringExtra(U.o);
    localR.d = paramIntent.getStringExtra(U.n);
    localR.k = this.h;
    localR.l = getApplicationContext();
    u.a().a(localR);
    return localR;
  }

  private com.xiaomi.smack.packet.d a(byte[] paramArrayOfByte)
  {
    com.xiaomi.xmpush.thrift.h localh = new com.xiaomi.xmpush.thrift.h();
    try
    {
      com.arcsoft.hpay100.a.a.a(localh, paramArrayOfByte);
      com.xiaomi.smack.packet.d locald = b(localh);
      return locald;
    }
    catch (org.apache.thrift.e locale)
    {
      com.xiaomi.a.a.a.b.a(locale);
    }
    return null;
  }

  private com.xiaomi.smack.packet.e a(com.xiaomi.smack.packet.e parame, String paramString1, String paramString2, boolean paramBoolean)
  {
    u localu = u.a();
    List localList = localu.b(paramString1);
    if (localList.isEmpty())
    {
      com.xiaomi.a.a.a.b.a("open channel should be called first before sending a packet, pkg=" + paramString1);
      parame = null;
    }
    R localR;
    do
    {
      return parame;
      parame.o(paramString1);
      String str1 = parame.f();
      if (TextUtils.isEmpty(str1))
      {
        str1 = (String)localList.get(0);
        parame.l(str1);
      }
      localR = localu.b(str1, parame.h());
      if (!f())
      {
        com.xiaomi.a.a.a.b.a("drop a packet as the channel is not connected, chid=" + str1);
        break;
      }
      if ((localR == null) || (localR.m != u.c.c))
      {
        com.xiaomi.a.a.a.b.a("drop a packet as the channel is not opened, chid=" + str1);
        break;
      }
      if (TextUtils.equals(paramString2, localR.j))
        continue;
      com.xiaomi.a.a.a.b.a("invalid session. " + paramString2);
      break;
    }
    while ((!(parame instanceof com.xiaomi.smack.packet.d)) || (!paramBoolean));
    com.xiaomi.smack.packet.d locald1 = (com.xiaomi.smack.packet.d)parame;
    byte[] arrayOfByte = W.a(localR.i, locald1.e());
    com.xiaomi.smack.packet.d locald2 = new com.xiaomi.smack.packet.d();
    locald2.n(locald1.h());
    locald2.m(locald1.g());
    locald2.k(locald1.e());
    locald2.l(locald1.f());
    locald2.b(true);
    String str2 = W.a(arrayOfByte, g.c(locald1.c()));
    com.xiaomi.smack.packet.a locala = new com.xiaomi.smack.packet.a("s", null, null, null);
    locala.b(str2);
    locald2.a(locala);
    return locald2;
  }

  public static <T extends org.apache.thrift.b<T, ?>> com.xiaomi.xmpush.thrift.h a(String paramString1, String paramString2, T paramT, com.xiaomi.xmpush.thrift.a parama)
  {
    byte[] arrayOfByte = com.arcsoft.hpay100.a.a.a(paramT);
    com.xiaomi.xmpush.thrift.h localh = new com.xiaomi.xmpush.thrift.h();
    com.xiaomi.xmpush.thrift.d locald = new com.xiaomi.xmpush.thrift.d();
    locald.a = 5L;
    locald.b = "fakeid";
    localh.a(locald);
    localh.a(ByteBuffer.wrap(arrayOfByte));
    localh.a(parama);
    localh.c(true);
    localh.b(paramString1);
    localh.a(false);
    localh.a(paramString2);
    return localh;
  }

  private void a(String paramString, int paramInt)
  {
    Collection localCollection = u.a().c(paramString);
    if (localCollection != null)
    {
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        R localR = (R)localIterator.next();
        if (localR == null)
          continue;
        a(new k(this, localR, paramInt, null, null), 0L);
      }
    }
    u.a().a(paramString);
  }

  private com.xiaomi.smack.packet.d b(com.xiaomi.xmpush.thrift.h paramh)
  {
    try
    {
      com.xiaomi.smack.packet.d locald = new com.xiaomi.smack.packet.d();
      locald.l("5");
      locald.m("xiaomi.com");
      locald.n(D.a(this).a);
      locald.b(true);
      locald.f("push");
      locald.o(paramh.f);
      String str1 = D.a(this).a;
      paramh.g.b = str1.substring(0, str1.indexOf("@"));
      paramh.g.d = str1.substring(1 + str1.indexOf("/"));
      byte[] arrayOfByte = com.arcsoft.hpay100.a.a.a(paramh);
      String str2 = String.valueOf(com.xiaomi.a.a.d.a.a(W.a(W.a(D.a(this).c, locald.e()), arrayOfByte)));
      com.xiaomi.smack.packet.a locala = new com.xiaomi.smack.packet.a("s", null, null, null);
      locala.b(str2);
      locald.a(locala);
      com.xiaomi.a.a.a.b.a("try send mi push message. packagename:" + paramh.f + " action:" + paramh.a);
      return locald;
    }
    catch (NullPointerException localNullPointerException)
    {
      com.xiaomi.a.a.a.b.a(localNullPointerException);
    }
    return null;
  }

  private void i()
  {
    if (d())
    {
      if (!this.j.b())
        this.j.a(true);
      return;
    }
    this.j.a();
  }

  private void j()
  {
    try
    {
      this.e.a();
      this.e.a(this.l, new w(this));
      this.g = this.e;
      return;
    }
    catch (com.xiaomi.smack.w localw)
    {
      com.xiaomi.a.a.a.b.a("fail to create xmpp connection", localw);
      this.e.a(new com.xiaomi.smack.packet.f(f.b.b), 3, localw);
    }
  }

  private void k()
  {
    try
    {
      com.xiaomi.network.c localc = com.xiaomi.network.f.a().a("mibind.chat.gslb.mi-idc.com");
      if (localc != null)
        this.b.a(localc);
      this.f.a();
      this.f.a(this.l, new x(this));
      this.g = this.f;
      return;
    }
    catch (com.xiaomi.smack.w localw)
    {
      com.xiaomi.a.a.a.b.a("fail to create BOSH connection", localw);
      this.f.a(new com.xiaomi.smack.packet.f(f.b.b), 3, localw);
    }
  }

  public final com.xiaomi.xmpush.thrift.h a(String paramString1, String paramString2)
  {
    com.xiaomi.xmpush.thrift.i locali = new com.xiaomi.xmpush.thrift.i();
    locali.b(paramString2);
    locali.c("package uninstalled");
    locali.a(com.xiaomi.smack.packet.e.d());
    locali.a(false);
    return a(paramString1, paramString2, locali, com.xiaomi.xmpush.thrift.a.i);
  }

  public final void a()
  {
    a(false);
  }

  public final void a(int paramInt)
  {
    this.k.a(paramInt);
  }

  public final void a(int paramInt, Exception paramException)
  {
    StringBuilder localStringBuilder = new StringBuilder("disconnect ").append(hashCode()).append(", ");
    if (this.g == null);
    for (Object localObject = null; ; localObject = Integer.valueOf(this.g.hashCode()))
    {
      com.xiaomi.a.a.a.b.a(localObject);
      if (this.g != null)
      {
        this.g.a(new com.xiaomi.smack.packet.f(f.b.b), paramInt, paramException);
        this.g = null;
      }
      a(7);
      a(4);
      u.a().a(paramInt);
      return;
    }
  }

  public final void a(R paramR)
  {
    paramR.a(new t(this));
  }

  public final void a(e parame)
  {
    a(parame, 0L);
  }

  public final void a(e parame, long paramLong)
  {
    this.k.a(parame, paramLong);
  }

  public final void a(com.xiaomi.smack.packet.e parame)
  {
    if (this.g != null)
    {
      this.g.a(parame);
      return;
    }
    throw new com.xiaomi.smack.w("try send msg while connection is null.");
  }

  public final void a(com.xiaomi.xmpush.thrift.h paramh)
  {
    if (this.g != null)
    {
      com.xiaomi.smack.packet.d locald = b(paramh);
      if (locald != null)
        this.g.a(locald);
      return;
    }
    throw new com.xiaomi.smack.w("try send msg while connection is null.");
  }

  public final void a(Exception paramException)
  {
    a(false);
  }

  public final void a(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    R localR = u.a().b(paramString1, paramString2);
    if (localR != null)
      a(new k(this, localR, paramInt, paramString4, paramString3), 0L);
    u.a().a(paramString1, paramString2);
  }

  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    if (this.g != null)
    {
      com.xiaomi.smack.packet.d locald = a(paramArrayOfByte);
      if (locald != null)
      {
        this.g.a(locald);
        return;
      }
      G.a(this, paramString, paramArrayOfByte, 70000003, "not a valid message");
      return;
    }
    throw new com.xiaomi.smack.w("try send msg while connection is null.");
  }

  public final void a(boolean paramBoolean)
  {
    this.c.a(paramBoolean);
  }

  public final void a(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null)
    {
      G.a(this, paramString, paramArrayOfByte, 70000003, "null payload");
      com.xiaomi.a.a.a.b.a("register request without payload");
      return;
    }
    com.xiaomi.xmpush.thrift.h localh = new com.xiaomi.xmpush.thrift.h();
    try
    {
      com.arcsoft.hpay100.a.a.a(localh, paramArrayOfByte);
      if (localh.a == com.xiaomi.xmpush.thrift.a.a)
      {
        com.xiaomi.xmpush.thrift.j localj = new com.xiaomi.xmpush.thrift.j();
        try
        {
          com.arcsoft.hpay100.a.a.a(localj, localh.f());
          G.a(localh.j(), paramArrayOfByte);
          a(new F(this, localh.j(), localj.d(), localj.h(), paramArrayOfByte), 0L);
          return;
        }
        catch (org.apache.thrift.e locale2)
        {
          com.xiaomi.a.a.a.b.a(locale2);
          G.a(this, paramString, paramArrayOfByte, 70000003, " data action error.");
          return;
        }
      }
    }
    catch (org.apache.thrift.e locale1)
    {
      com.xiaomi.a.a.a.b.a(locale1);
      G.a(this, paramString, paramArrayOfByte, 70000003, " data container error.");
      return;
    }
    G.a(this, paramString, paramArrayOfByte, 70000003, " registration action required.");
    com.xiaomi.a.a.a.b.a("register request with invalid payload");
  }

  public final void a(com.xiaomi.smack.packet.e[] paramArrayOfe)
  {
    if (this.g != null)
    {
      this.g.a(paramArrayOfe);
      return;
    }
    throw new com.xiaomi.smack.w("try send msg while connection is null.");
  }

  public final void b()
  {
    this.c.a();
    Iterator localIterator = u.a().b().iterator();
    while (localIterator.hasNext())
      a(new a(this, (R)localIterator.next()), 0L);
  }

  public final void b(R paramR)
  {
    if (paramR != null)
    {
      long l1 = paramR.a();
      com.xiaomi.a.a.a.b.a("schedule rebind job in " + l1 / 1000L);
      a(new a(this, paramR), l1);
    }
  }

  public final void b(e parame)
  {
    this.k.a(parame.a, parame);
  }

  public final boolean b(int paramInt)
  {
    return this.k.b(1);
  }

  public final void c()
  {
    com.xiaomi.a.a.a.b.b("begin to connect...");
  }

  public final boolean d()
  {
    return (com.xiaomi.a.a.c.a.b(this)) && (u.a().c() > 0);
  }

  public final y e()
  {
    return this.h;
  }

  public final boolean f()
  {
    return (this.g != null) && (this.g.j());
  }

  public final com.xiaomi.smack.l g()
  {
    return this.g;
  }

  public final void h()
  {
    a(new o(this, 10), 120000L);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    C localC = D.a(this);
    if (localC != null)
      com.xiaomi.a.a.b.a.a(localC.g);
    com.xiaomi.network.f.a(this, null, null, "0", "push", "2.1");
    this.a = new com.xiaomi.smack.n(null, 5222, "xiaomi.com", null);
    this.a.a(true);
    this.e = new com.xiaomi.smack.z(this, this.a);
    this.e.b("<iq to='" + "xiaomi.com" + "' id='0' chid='0' type='get'><ping xmlns='urn:xmpp:ping'>%1$s</ping></iq>");
    this.b = new com.xiaomi.smack.a(false, new com.xiaomi.network.c("mibind.chat.gslb.mi-idc.com"), 80, "mibind/http-bind", "xiaomi.com", null);
    System.setProperty(com.xiaomi.kenai.jbosh.F.class.getName() + ".emptyRequestDelay", "1000");
    this.f = new com.xiaomi.smack.b(this, this.b);
    this.h = new y();
    Intent localIntent = new Intent();
    localIntent.setAction("com.xiaomi.push.service_started");
    sendBroadcast(localIntent);
    this.j = new com.xiaomi.push.service.a.a(this);
    this.e.a(this);
    this.f.a(this);
    this.i = new PacketSync(this);
    this.c = new X(this);
    z localz = new z();
    com.xiaomi.smack.c.c.a().a("all", "xm:chat", localz);
    this.k = new A("Connection Controller Thread");
    this.k.start();
    a(new p(this, 11), 0L);
    u localu = u.a();
    localu.f();
    localu.a(new q(this));
  }

  public void onDestroy()
  {
    A localA = this.k;
    for (int n = 1; n < 15; n++)
      localA.a(n);
    a(new v(this, 2), 0L);
    a(new f(this), 0L);
    u.a().f();
    u.a().a(15);
    u.a().d();
    this.e.b(this);
    this.f.b(this);
    this.j.a();
    super.onDestroy();
    com.xiaomi.a.a.a.b.a("Service destroyed");
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    int n = 1;
    int i2 = 0;
    if (paramIntent == null)
      com.xiaomi.a.a.a.b.c("onStart() with intent NULL");
    u localu;
    String str2;
    R localR1;
    while (true)
    {
      localu = u.a();
      String str1;
      if ((paramIntent != null) && (paramIntent.getAction() != null))
      {
        if ((!U.a.equalsIgnoreCase(paramIntent.getAction())) && (!U.g.equalsIgnoreCase(paramIntent.getAction())))
          break label354;
        str1 = paramIntent.getStringExtra(U.l);
        str2 = paramIntent.getStringExtra(U.u);
        if (TextUtils.isEmpty(paramIntent.getStringExtra(U.o)))
          com.xiaomi.a.a.a.b.a("security is empty. ignore.");
      }
      else
      {
        return;
        com.xiaomi.a.a.a.b.b("onStart() with intent.Action = " + paramIntent.getAction());
        continue;
      }
      if (str1 == null)
        break;
      localR1 = a(str1, paramIntent);
      if ((TextUtils.isEmpty(localR1.j)) || (TextUtils.equals(str2, localR1.j)))
        break label2091;
      com.xiaomi.a.a.a.b.a("session changed. old session=" + localR1.j + ", new session=" + str2);
    }
    label354: label1510: int i4;
    label1820: label2091: for (int i3 = n; ; i4 = 0)
      while (true)
      {
        localR1.j = str2;
        if (!com.xiaomi.a.a.c.a.b(this))
        {
          this.h.a(this, localR1, false, 2, null);
          return;
        }
        if (f())
        {
          if (i3 != 0)
          {
            a(new i(this, localR1), 0L);
            return;
          }
          if (localR1.m == u.c.b)
          {
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = localR1.h;
            arrayOfObject[n] = localR1.b;
            com.xiaomi.a.a.a.b.a(String.format("the client is binding. %1$s %2$s.", arrayOfObject));
            return;
          }
          if (localR1.m == u.c.c)
          {
            this.h.a(this, localR1, n, 0, null);
            return;
          }
          a(new a(this, localR1), 0L);
          return;
        }
        a(n);
        return;
        com.xiaomi.a.a.a.b.c("channel id is empty, do nothing!");
        return;
        if (U.f.equalsIgnoreCase(paramIntent.getAction()))
        {
          String str20 = paramIntent.getStringExtra(U.s);
          String str21 = paramIntent.getStringExtra(U.l);
          String str22 = paramIntent.getStringExtra(U.k);
          if (TextUtils.isEmpty(str21))
          {
            Iterator localIterator = localu.b(str20).iterator();
            while (localIterator.hasNext())
              a((String)localIterator.next(), 2);
            break;
          }
          if (TextUtils.isEmpty(str22))
          {
            a(str21, 2);
            return;
          }
          a(str21, str22, 2, null, null);
          return;
        }
        if (U.b.equalsIgnoreCase(paramIntent.getAction()))
        {
          String str18 = paramIntent.getStringExtra(U.s);
          String str19 = paramIntent.getStringExtra(U.u);
          Bundle localBundle = paramIntent.getBundleExtra("ext_packet");
          boolean bool5 = paramIntent.getBooleanExtra("ext_encrypt", n);
          com.xiaomi.smack.packet.e locale = a(new com.xiaomi.smack.packet.d(localBundle), str18, str19, bool5);
          if (locale == null)
            break;
          a(new m(this, locale), 0L);
          return;
        }
        if (U.d.equalsIgnoreCase(paramIntent.getAction()))
        {
          String str16 = paramIntent.getStringExtra(U.s);
          String str17 = paramIntent.getStringExtra(U.u);
          Parcelable[] arrayOfParcelable = paramIntent.getParcelableArrayExtra("ext_packets");
          com.xiaomi.smack.packet.d[] arrayOfd = new com.xiaomi.smack.packet.d[arrayOfParcelable.length];
          boolean bool4 = paramIntent.getBooleanExtra("ext_encrypt", n);
          while (true)
          {
            if (i2 >= arrayOfParcelable.length)
              break label687;
            arrayOfd[i2] = new com.xiaomi.smack.packet.d((Bundle)arrayOfParcelable[i2]);
            arrayOfd[i2] = ((com.xiaomi.smack.packet.d)a(arrayOfd[i2], str16, str17, bool4));
            if (arrayOfd[i2] == null)
              break;
            i2++;
          }
          label687: a(new l(this, arrayOfd), 0L);
          return;
        }
        if (U.c.equalsIgnoreCase(paramIntent.getAction()))
        {
          String str14 = paramIntent.getStringExtra(U.s);
          String str15 = paramIntent.getStringExtra(U.u);
          com.xiaomi.smack.packet.b localb = new com.xiaomi.smack.packet.b(paramIntent.getBundleExtra("ext_packet"));
          if (a(localb, str14, str15, false) == null)
            break;
          a(new m(this, localb), 0L);
          return;
        }
        if (U.e.equalsIgnoreCase(paramIntent.getAction()))
        {
          String str12 = paramIntent.getStringExtra(U.s);
          String str13 = paramIntent.getStringExtra(U.u);
          com.xiaomi.smack.packet.f localf = new com.xiaomi.smack.packet.f(paramIntent.getBundleExtra("ext_packet"));
          if (a(localf, str12, str13, false) == null)
            break;
          a(new m(this, localf), 0L);
          return;
        }
        if (("com.xiaomi.push.timer".equalsIgnoreCase(paramIntent.getAction())) || ("com.xiaomi.push.check_alive".equalsIgnoreCase(paramIntent.getAction())))
        {
          if ("com.xiaomi.push.timer".equalsIgnoreCase(paramIntent.getAction()))
            com.xiaomi.a.a.a.b.a("Service called on timer");
          while (true)
          {
            if (!this.k.a())
              break label962;
            com.xiaomi.a.a.a.b.c("ERROR, the job controller is blocked.");
            u.a().a(14);
            stopSelf();
            return;
            if (System.currentTimeMillis() - this.d < 30000L)
              break;
            this.d = System.currentTimeMillis();
            com.xiaomi.a.a.a.b.a("Service called on check alive.");
          }
          label962: if (!f())
          {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(paramIntent.getAction()))
            {
              a(false);
              return;
            }
            a(n);
            return;
          }
          if (this.g.q())
          {
            a(new h(this), 0L);
            return;
          }
          a(new d(this, 17, null), 0L);
          return;
        }
        if ("com.xiaomi.push.network_status_changed".equalsIgnoreCase(paramIntent.getAction()))
          try
          {
            NetworkInfo localNetworkInfo2 = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
            localNetworkInfo1 = localNetworkInfo2;
            if (localNetworkInfo1 != null)
            {
              com.xiaomi.a.a.a.b.a("network changed, " + localNetworkInfo1.toString());
              this.e.s();
              this.f.s();
              if (!com.xiaomi.a.a.c.a.b(this))
                break label1211;
              if (!f())
              {
                com.xiaomi.smack.l locall = this.g;
                int i7 = 0;
                if (locall != null)
                {
                  boolean bool3 = this.g.i();
                  i7 = 0;
                  if (bool3)
                    i7 = n;
                }
                if (i7 == 0)
                {
                  this.k.a(n);
                  a(new c(this), 0L);
                }
              }
              i();
              return;
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              com.xiaomi.a.a.a.b.a(localException);
              NetworkInfo localNetworkInfo1 = null;
              continue;
              com.xiaomi.a.a.a.b.a("network changed, no active network");
              continue;
              label1211: a(new d(this, 2, null), 0L);
            }
          }
        if (U.h.equals(paramIntent.getAction()))
        {
          String str11 = paramIntent.getStringExtra(U.l);
          if (str11 != null)
            a(str11, paramIntent).j = paramIntent.getStringExtra(U.u);
          a(new j(this), 0L);
          return;
        }
        if (U.i.equals(paramIntent.getAction()))
        {
          String str8 = paramIntent.getStringExtra(U.s);
          List localList = localu.b(str8);
          if (localList.isEmpty())
          {
            com.xiaomi.a.a.a.b.a("open channel should be called first before update info, pkg=" + str8);
            return;
          }
          String str9 = paramIntent.getStringExtra(U.l);
          String str10 = paramIntent.getStringExtra(U.k);
          if (TextUtils.isEmpty(str9))
            str9 = (String)localList.get(0);
          Collection localCollection2;
          if (TextUtils.isEmpty(str10))
          {
            localCollection2 = localu.c(str9);
            localR2 = null;
            if (localCollection2 != null)
            {
              boolean bool2 = localCollection2.isEmpty();
              localR2 = null;
              if (bool2);
            }
          }
          for (R localR2 = (R)localCollection2.iterator().next(); ; localR2 = localu.b(str9, str10))
          {
            if (localR2 == null)
              break label1510;
            if (paramIntent.hasExtra(U.q))
              localR2.f = paramIntent.getStringExtra(U.q);
            if (!paramIntent.hasExtra(U.r))
              break;
            localR2.g = paramIntent.getStringExtra(U.r);
            return;
          }
          break;
        }
        if ("com.xiaomi.mipush.REGISTER_APP".equals(paramIntent.getAction()))
        {
          byte[] arrayOfByte2 = paramIntent.getByteArrayExtra("mipush_payload");
          String str7 = paramIntent.getStringExtra("mipush_app_package");
          boolean bool1 = paramIntent.getBooleanExtra("mipush_env_chanage", false);
          int i6 = paramIntent.getIntExtra("mipush_env_type", n);
          E.a(this).c(str7);
          if ((bool1) && (!"com.xiaomi.xmsf".equals(getPackageName())))
          {
            a(new r(this, 14, i6, arrayOfByte2, str7), 0L);
            return;
          }
          a(arrayOfByte2, str7);
          return;
        }
        if (("com.xiaomi.mipush.SEND_MESSAGE".equals(paramIntent.getAction())) || ("com.xiaomi.mipush.UNREGISTER_APP".equals(paramIntent.getAction())))
        {
          String str3 = paramIntent.getStringExtra("mipush_app_package");
          byte[] arrayOfByte1 = paramIntent.getByteArrayExtra("mipush_payload");
          Collection localCollection1 = u.a().c("5");
          if ("com.xiaomi.mipush.UNREGISTER_APP".equals(paramIntent.getAction()))
            E.a(this).b(str3);
          if (localCollection1.isEmpty())
          {
            G.b(str3, arrayOfByte1);
            return;
          }
          if (((R)localCollection1.iterator().next()).m != u.c.c)
          {
            G.b(str3, arrayOfByte1);
            return;
          }
          a(new s(this, 4, str3, arrayOfByte1), 0L);
          return;
        }
        String str5;
        if (V.a.equals(paramIntent.getAction()))
        {
          str5 = paramIntent.getStringExtra("com.xiaomi.xmsf");
          if ((str5 == null) || (TextUtils.isEmpty(str5.trim())))
            break;
        }
        try
        {
          getPackageManager().getPackageInfo(str5, 256);
          int i1 = 0;
          if (("com.xiaomi.channel".equals(str5)) && (!u.a().c("1").isEmpty()) && (i1 != 0))
          {
            a("1", 0);
            com.xiaomi.a.a.a.b.a("close the miliao channel as the app is uninstalled.");
            return;
          }
          SharedPreferences localSharedPreferences = getSharedPreferences("pref_registered_pkg_names", 0);
          if ((!localSharedPreferences.contains(str5)) || (i1 == 0))
            break;
          SharedPreferences.Editor localEditor = localSharedPreferences.edit();
          localEditor.remove(str5);
          localEditor.commit();
          if (!f())
            break;
          String str6 = localSharedPreferences.getString(str5, null);
          if (str6 == null)
            break;
          try
          {
            a(a(str5, str6));
            com.xiaomi.a.a.a.b.a("\"uninstall " + str5 + "\" msg sent");
            return;
          }
          catch (com.xiaomi.smack.w localw)
          {
            com.xiaomi.a.a.a.b.c("Fail to send Message: " + localw.getMessage());
            a(10, localw);
            return;
          }
          if (!"com.xiaomi.mipush.CLEAR_NOTIFICATION".equals(paramIntent.getAction()))
            break;
          String str4 = paramIntent.getStringExtra(U.s);
          int i5 = paramIntent.getIntExtra(U.t, 0);
          if (TextUtils.isEmpty(str4))
            break;
          if (i5 >= 0)
          {
            N.a(this, str4, i5);
            return;
          }
          if (i5 != -1)
            break;
          N.b(this, str4);
          return;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          break label1820;
        }
      }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    onStart(paramIntent, paramInt2);
    return m;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.XMPushService
 * JD-Core Version:    0.6.0
 */