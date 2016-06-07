package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.j;
import com.xiaomi.xmpush.thrift.o;
import com.xiaomi.xmpush.thrift.q;
import com.xiaomi.xmpush.thrift.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class d
{
  public static String a = "subscribe-topic";
  public static String b = "unsubscibe-topic";
  private static Context c;
  private static long d;

  static
  {
    if ((com.xiaomi.a.a.b.a.a) || (com.xiaomi.a.a.b.a.c) || (com.xiaomi.a.a.b.a.b) || (com.xiaomi.a.a.b.a.d))
      com.xiaomi.a.a.a.b.a(0);
    d = System.currentTimeMillis();
  }

  private static String a()
  {
    monitorenter;
    try
    {
      String str = com.alipay.sdk.b.b.a(4) + d;
      d = 1L + d;
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void a(Context paramContext, String paramString)
  {
    if (!g.a(paramContext).a())
      return;
    com.xiaomi.xmpush.thrift.i locali = new com.xiaomi.xmpush.thrift.i();
    locali.b(g.a(paramContext).b());
    locali.c("bar:click");
    locali.a(paramString);
    locali.a(false);
    n.a(paramContext).a(locali, com.xiaomi.xmpush.thrift.a.i, false);
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, "context");
    a(paramString1, "appID");
    a(paramString2, "appToken");
    while (true)
    {
      boolean bool;
      try
      {
        Context localContext1 = paramContext.getApplicationContext();
        c = localContext1;
        if (localContext1 != null)
          continue;
        c = paramContext;
        int i = g.a(c).k();
        int j = com.xiaomi.a.a.b.a.c();
        bool = false;
        if (i == j)
          continue;
        bool = true;
        if ((!bool) && (g.a(c).a(paramString1, paramString2)) && (!g.a(c).l()))
        {
          if (1 != f.a(paramContext))
            continue;
          a(null, "callback");
          g.a(paramContext);
          n.a(paramContext).a();
          Context localContext2 = c;
          SharedPreferences localSharedPreferences = localContext2.getSharedPreferences("mipush_extra", 0);
          if (System.currentTimeMillis() - 86400000L < localSharedPreferences.getLong("wake_up", 0L))
            break;
          localSharedPreferences.edit().putLong("wake_up", System.currentTimeMillis()).commit();
          new Thread(new i(localContext2)).start();
          return;
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(g.a(paramContext).d());
          MiPushCommandMessage localMiPushCommandMessage = f.a("register", localArrayList, 0L, null, null);
          f.a(c, localMiPushCommandMessage);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        com.xiaomi.a.a.a.b.a(localThrowable);
        return;
      }
      g.a(c).f();
      g.a(c).a(com.xiaomi.a.a.b.a.c());
      g.a(c).b(paramString1, paramString2);
      c(c);
      j localj = new j();
      localj.a(a());
      localj.b(paramString1);
      localj.e(paramString2);
      localj.d(paramContext.getPackageName());
      localj.c(g.a(paramContext, paramContext.getPackageName()));
      n.a(c).a(localj, bool);
    }
  }

  private static void a(Object paramObject, String paramString)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("param " + paramString + " is not nullable");
  }

  public static boolean a(Context paramContext)
  {
    return n.a(paramContext).b();
  }

  public static List<String> b(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramContext.getSharedPreferences("mipush_extra", 0).getAll().keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!str.startsWith("topic_"))
        continue;
      localArrayList.add(str.substring(6));
    }
    return localArrayList;
  }

  static void b(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putLong("alias_" + paramString, System.currentTimeMillis()).commit();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(g.a(paramContext).b()))
      return;
    if (System.currentTimeMillis() - f(paramContext, paramString1) > 86400000L)
    {
      o localo = new o();
      localo.a(a());
      localo.b(g.a(paramContext).b());
      localo.c(paramString1);
      localo.d(paramContext.getPackageName());
      localo.e(null);
      n.a(paramContext).a(localo, com.xiaomi.xmpush.thrift.a.c);
      return;
    }
    if (1 == f.a(paramContext))
    {
      PushMessageHandler.a(null, 0L, null, paramString1);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString1);
    f.a(paramContext, f.a(a, localArrayList, 0L, null, null));
  }

  protected static void c(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("mipush_extra", 0);
    long l = localSharedPreferences.getLong("wake_up", 0L);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.clear();
    if (l > 0L)
      localEditor.putLong("wake_up", l);
    localEditor.commit();
  }

  static void c(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().remove("alias_" + paramString).commit();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void c(Context paramContext, String paramString1, String paramString2)
  {
    if (!g.a(paramContext).a())
      return;
    if (f(paramContext, paramString1) < 0L)
    {
      com.xiaomi.a.a.a.b.a("Don't cancel subscribe for " + paramString1 + " is unsubscribed");
      return;
    }
    s locals = new s();
    locals.a(a());
    locals.b(g.a(paramContext).b());
    locals.c(paramString1);
    locals.d(paramContext.getPackageName());
    locals.e(null);
    n.a(paramContext).a(locals, com.xiaomi.xmpush.thrift.a.d);
  }

  static void d(Context paramContext)
  {
    if (!g.a(paramContext).g())
      return;
    String str1 = g.a(paramContext).b();
    String str2 = g.a(paramContext).c();
    g.a(paramContext).f();
    g.a(paramContext).b(str1, str2);
    j localj = new j();
    localj.a(a());
    localj.b(str1);
    localj.e(str2);
    localj.d(paramContext.getPackageName());
    localj.c(g.a(paramContext, paramContext.getPackageName()));
    n.a(paramContext).a(localj, false);
  }

  static void d(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putLong("topic_" + paramString, System.currentTimeMillis()).commit();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  static void d(Context paramContext, String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().putString("accept_time", paramString1 + "," + paramString2).commit();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void e(Context paramContext)
  {
    if (!g.a(paramContext).a())
      return;
    q localq = new q();
    localq.a(a());
    localq.b(g.a(paramContext).b());
    localq.c(g.a(paramContext).d());
    localq.e(g.a(paramContext).c());
    localq.d(paramContext.getPackageName());
    n.a(paramContext).a(localq);
    g.a(paramContext).i();
    c(paramContext);
  }

  static void e(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      paramContext.getSharedPreferences("mipush_extra", 0).edit().remove("topic_" + paramString).commit();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static long f(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("mipush_extra", 0).getLong("topic_" + paramString, -1L);
  }

  public static long g(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("mipush_extra", 0).getLong("alias_" + paramString, -1L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.d
 * JD-Core Version:    0.6.0
 */