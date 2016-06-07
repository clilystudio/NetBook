package com.xiaomi.smack.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.xiaomi.a.a.b.b;
import com.xiaomi.push.a.a;
import com.xiaomi.push.service.XMPushService;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class h
{
  private static b a = new b(true);
  private static int b = -1;
  private static final Object c = new Object();
  private static List<i> d = Collections.synchronizedList(new ArrayList());
  private static String e = "";
  private static a f = null;

  private static int a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager;
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return -1;
    }
    catch (Exception localException1)
    {
      return -1;
    }
    NetworkInfo localNetworkInfo;
    try
    {
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return -1;
    }
    catch (Exception localException2)
    {
      return -1;
    }
    return localNetworkInfo.getType();
  }

  public static int a(String paramString)
  {
    try
    {
      int i = paramString.getBytes("UTF-8").length;
      return i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return paramString.getBytes().length;
  }

  public static void a(XMPushService paramXMPushService, String paramString, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    if ((paramXMPushService == null) || (TextUtils.isEmpty(paramString)) || (!"com.xiaomi.xmsf".equals(paramXMPushService.getPackageName())) || ("com.xiaomi.xmsf".equals(paramString)));
    int i;
    do
    {
      return;
      if (b == -1)
        b = a(paramXMPushService);
      i = b;
    }
    while (-1 == i);
    while (true)
    {
      synchronized (c)
      {
        boolean bool = d.isEmpty();
        if (!paramBoolean)
          continue;
        int j = 1;
        if (i != 0)
          continue;
        String str = b(paramXMPushService);
        i locali1 = new i(paramString, paramLong2, i, j, str, paramLong1);
        Iterator localIterator = d.iterator();
        if (!localIterator.hasNext())
          continue;
        i locali2 = (i)localIterator.next();
        if ((TextUtils.equals(locali1.a, locali2.a)) && (TextUtils.equals(locali1.e, locali2.e)) && (locali1.c == locali2.c) && (locali1.d == locali2.d))
        {
          if (Math.abs(locali1.b - locali2.b) <= 5000L)
            break label316;
          break label310;
          if (k == 0)
            continue;
          locali2.f += locali1.f;
          if (!bool)
            break;
          a.a(new j(paramXMPushService), 5000L);
          return;
          j = 0;
          continue;
          str = "";
          continue;
          d.add(locali1);
        }
      }
      label310: int k = 0;
      continue;
      label316: k = 1;
    }
  }

  // ERROR //
  private static String b(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 48	com/xiaomi/smack/d/h:e	Ljava/lang/String;
    //   6: invokestatic 189	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifne +12 -> 21
    //   12: getstatic 48	com/xiaomi/smack/d/h:e	Ljava/lang/String;
    //   15: astore_3
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload_3
    //   20: areturn
    //   21: aload_0
    //   22: ldc 235
    //   24: invokevirtual 61	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   27: checkcast 237	android/telephony/TelephonyManager
    //   30: astore 4
    //   32: aload 4
    //   34: ifnull +11 -> 45
    //   37: aload 4
    //   39: invokevirtual 240	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   42: putstatic 48	com/xiaomi/smack/d/h:e	Ljava/lang/String;
    //   45: getstatic 48	com/xiaomi/smack/d/h:e	Ljava/lang/String;
    //   48: astore_3
    //   49: goto -33 -> 16
    //   52: astore_1
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: astore_2
    //   59: goto -14 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   3	16	52	finally
    //   21	32	52	finally
    //   37	45	52	finally
    //   45	49	52	finally
    //   21	32	58	java/lang/Exception
    //   37	45	58	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.h
 * JD-Core Version:    0.6.0
 */