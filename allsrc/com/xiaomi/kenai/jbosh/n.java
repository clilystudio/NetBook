package com.xiaomi.kenai.jbosh;

import java.util.Collections;
import java.util.Map;

final class n extends p
{
  private static final b a = new d();
  private final Map<f, String> b;
  private final String c;

  private n(Map<f, String> paramMap, String paramString)
  {
    this.b = paramMap;
    this.c = paramString;
  }

  public static n a(String paramString)
  {
    return new n(a.a(paramString).a(), paramString);
  }

  public final Map<f, String> c()
  {
    return Collections.unmodifiableMap(this.b);
  }

  public final String d()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.n
 * JD-Core Version:    0.6.0
 */