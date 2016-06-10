package com.clilystudio.netbook.umeng.update.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
import u.a.g;

public class DeltaUpdate
{
  private static boolean a;

  static
  {
    try
    {
      System.loadLibrary("bspatch");
      a = true;
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      a = false;
    }
  }

  public static int a(String paramString1, String paramString2, String paramString3)
  {
    return bspatch(paramString1, paramString2, paramString3);
  }

  public static String a(Context paramContext)
  {
    return paramContext.getApplicationInfo().sourceDir;
  }

  public static boolean a()
  {
    return a;
  }

  public static String b(Context paramContext)
  {
    String str = paramContext.getApplicationInfo().sourceDir;
    if (!new File(str).exists())
      return "";
    return g.a(new File(str));
  }

  public static native int bspatch(String paramString1, String paramString2, String paramString3);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.util.DeltaUpdate
 * JD-Core Version:    0.6.0
 */