package com.umeng.a;

import android.content.Context;
import u.aly.bs;

public final class a
{
  public static String a;
  public static String b;
  public static String c;
  public static String d;
  public static boolean e;
  public static boolean f;
  public static boolean g;
  public static long h;
  public static boolean i;
  private static String j = null;
  private static String k = null;
  private static double[] l;
  private static int[] m;

  static
  {
    a = null;
    b = null;
    c = "";
    d = "";
    l = null;
    e = true;
    f = true;
    g = true;
    h = 30000L;
    i = true;
  }

  public static String a(Context paramContext)
  {
    if (j == null)
      j = bs.j(paramContext);
    return j;
  }

  public static void a(int paramInt1, int paramInt2)
  {
    if (m == null)
      m = new int[2];
    m[0] = paramInt1;
    m[1] = paramInt2;
  }

  public static double[] a()
  {
    return null;
  }

  public static String b(Context paramContext)
  {
    if (k == null)
      k = bs.n(paramContext);
    return k;
  }

  public static int[] c(Context paramContext)
  {
    if (m == null)
      m = o.a(paramContext).a();
    return m;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.a
 * JD-Core Version:    0.6.0
 */