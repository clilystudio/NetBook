package com.alipay.b.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.design.widget.K;
import android.support.design.widget.am;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.Map;

@SuppressLint({"NewApi"})
public final class a
{
  private static a a;
  private static Object b = new Object();
  private Context c;
  private String d;
  private volatile boolean e = false;
  private volatile boolean f = false;
  private Thread g;
  private LinkedList<d> h = new LinkedList();

  private a(Context paramContext)
  {
    this.c = paramContext;
  }

  public static a a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null)
        a = new a(paramContext);
      a locala = a;
      return locala;
    }
  }

  public static String b(Context paramContext)
  {
    try
    {
      String str = (String)Class.forName("com.d.a.c.a").getMethod("getUtdid", new Class[] { Context.class }).invoke(null, new Object[] { paramContext });
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public final void a(int paramInt, Map<String, String> paramMap, K paramK)
  {
    String str1 = am.a(paramMap, "utdid", "");
    String str2 = am.a(paramMap, "tid", "");
    String str3 = am.a(paramMap, "userId", "");
    this.h.addLast(new d(this, 0, str1, str2, str3, null));
    if (this.g == null)
    {
      this.g = new Thread(new b(this));
      this.g.setUncaughtExceptionHandler(new c(this));
      this.g.start();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.e.a
 * JD-Core Version:    0.6.0
 */