package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import u.a.a;

public final class k
{
  private static String a;
  private static String b;
  private static boolean c = true;
  private static boolean d = true;
  private static boolean e = false;
  private static boolean f = true;
  private static boolean g = false;
  private static boolean h = true;
  private static boolean i = true;
  private static int j = 0;

  public static String a(Context paramContext)
  {
    if (a == null)
      a = a.e(paramContext);
    return a;
  }

  public static void a(Context paramContext, String paramString)
  {
    paramContext.getApplicationContext().getSharedPreferences("umeng_update", 0).edit().putString("ignore", paramString).commit();
  }

  public static void a(boolean paramBoolean)
  {
    e = false;
  }

  public static boolean a()
  {
    return c;
  }

  public static String b(Context paramContext)
  {
    if (b == null)
      b = a.f(paramContext);
    return b;
  }

  public static void b(boolean paramBoolean)
  {
    g = false;
  }

  public static boolean b()
  {
    return d;
  }

  public static String c(Context paramContext)
  {
    String str = paramContext.getApplicationContext().getSharedPreferences("umeng_update", 0).getString("ignore", "");
    if ("".equals(str))
      str = null;
    return str;
  }

  public static boolean c()
  {
    return e;
  }

  public static boolean d()
  {
    return f;
  }

  public static boolean e()
  {
    return g;
  }

  public static int f()
  {
    return 0;
  }

  public static boolean g()
  {
    return h;
  }

  public static boolean h()
  {
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.k
 * JD-Core Version:    0.6.0
 */