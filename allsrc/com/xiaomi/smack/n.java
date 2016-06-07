package com.xiaomi.smack;

import android.support.design.widget.h;
import com.xiaomi.a.a.b.a;
import java.util.Map;

public class n
  implements Cloneable
{
  private String a;
  private String b = d();
  private int c;
  private boolean d = l.c;
  private String e;

  public n(Map<String, Integer> paramMap, int paramInt, String paramString, h paramh)
  {
    this.c = paramInt;
    this.a = paramString;
  }

  public static final String d()
  {
    if (a.c)
      return "10.237.12.2";
    if (a.a())
      return "sandbox.xmpush.xiaomi.com";
    if (a.b())
      return "10.237.12.17";
    if (a.a)
      return "58.68.235.106";
    return "app.chat.xiaomi.net";
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.d = true;
  }

  public final void b(String paramString)
  {
    this.e = paramString;
  }

  public final void c(String paramString)
  {
    this.b = paramString;
  }

  public final String e()
  {
    return this.a;
  }

  public final String f()
  {
    return this.e;
  }

  public final int g()
  {
    return this.c;
  }

  public final String h()
  {
    return this.b;
  }

  public final boolean i()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.n
 * JD-Core Version:    0.6.0
 */