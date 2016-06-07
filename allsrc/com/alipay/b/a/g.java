package com.alipay.b.a;

import android.content.Context;

public final class g
{
  private static String a = "";
  private static String b = "";

  public static String a()
  {
    return a;
  }

  public static void a(d paramd)
  {
    a = paramd.a();
    b = paramd.c();
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      long l = Math.abs(System.currentTimeMillis() - com.arcsoft.hpay100.a.a.d(paramContext));
      if (l < 86400000L)
        return true;
    }
    catch (Throwable localThrowable)
    {
      com.alipay.security.mobile.module.a.a.a(localThrowable);
    }
    return false;
  }

  public static String b()
  {
    return b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.g
 * JD-Core Version:    0.6.0
 */