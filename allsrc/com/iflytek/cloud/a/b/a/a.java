package com.iflytek.cloud.a.b.a;

import android.util.Log;
import com.iflytek.cloud.Setting;

public class a
{
  private static String a = "MscSpeechLog";
  private static boolean b = false;

  public static void a(String paramString)
  {
    if (Setting.getShowLog())
      Log.d(a, paramString);
  }

  public static void a(String paramString1, String paramString2)
  {
    if (Setting.getShowLog())
      Log.d(paramString1, paramString2);
  }

  public static void b(String paramString)
  {
    if (Setting.getShowLog())
      Log.e(a, paramString);
  }

  public static void c(String paramString)
  {
    if ((Setting.getShowLog()) && (b))
      Log.d(a, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.a.b.a.a
 * JD-Core Version:    0.6.0
 */