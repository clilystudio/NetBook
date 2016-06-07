package com.xiaomi.mistatistic.sdk.a;

import android.util.Log;

public final class t
{
  private static boolean a = false;

  public static void a()
  {
    a = true;
  }

  public static void a(String paramString)
  {
    if (a)
      Log.v("MI_STAT", paramString);
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a)
      Log.e("MI_STAT", paramString, paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.t
 * JD-Core Version:    0.6.0
 */