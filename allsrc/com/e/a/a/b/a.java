package com.e.a.a.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Process;

public final class a
{
  private static int a = 6;
  private static b b = new b();

  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("VERSION.RELEASE:[" + Build.VERSION.RELEASE);
    localStringBuilder.append("] VERSION.CODENAME:[" + Build.VERSION.CODENAME);
    localStringBuilder.append("] VERSION.INCREMENTAL:[" + Build.VERSION.INCREMENTAL);
    localStringBuilder.append("] BOARD:[" + Build.BOARD);
    localStringBuilder.append("] DEVICE:[" + Build.DEVICE);
    localStringBuilder.append("] DISPLAY:[" + Build.DISPLAY);
    localStringBuilder.append("] FINGERPRINT:[" + Build.FINGERPRINT);
    localStringBuilder.append("] HOST:[" + Build.HOST);
    localStringBuilder.append("] MANUFACTURER:[" + Build.MANUFACTURER);
    localStringBuilder.append("] MODEL:[" + Build.MODEL);
    localStringBuilder.append("] PRODUCT:[" + Build.PRODUCT);
    localStringBuilder.append("] TAGS:[" + Build.TAGS);
    localStringBuilder.append("] TYPE:[" + Build.TYPE);
    localStringBuilder.append("] USER:[" + Build.USER + "]");
  }

  public static void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null);
  }

  public static void a(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if ((b != null) && (b.a() <= 4))
      if (paramArrayOfObject != null)
        break label63;
    label63: for (String str = paramString2; ; str = String.format(paramString2, paramArrayOfObject))
    {
      if (str == null)
        str = "";
      b localb = b;
      Process.myPid();
      Thread.currentThread().getId();
      Looper.getMainLooper().getThread().getId();
      localb.c(paramString1, str);
      return;
    }
  }

  public static void b(String paramString1, String paramString2)
  {
    if ((b != null) && (b.a() <= 2))
    {
      b localb = b;
      Process.myPid();
      Thread.currentThread().getId();
      Looper.getMainLooper().getThread().getId();
      localb.a(paramString1, paramString2);
    }
  }

  public static void c(String paramString1, String paramString2)
  {
    if ((b != null) && (b.a() <= 1))
    {
      if (paramString2 == null)
        paramString2 = "";
      b localb = b;
      Process.myPid();
      Thread.currentThread().getId();
      Looper.getMainLooper().getThread().getId();
      localb.b(paramString1, paramString2);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.b.a
 * JD-Core Version:    0.6.0
 */