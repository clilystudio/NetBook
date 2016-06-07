package com.xiaomi.kenai.jbosh;

import java.util.HashMap;
import java.util.Map;

public final class i
{
  private Map<f, String> a;
  private boolean b;
  private String c;

  public final h a()
  {
    if (this.a == null)
      this.a = new HashMap();
    if (this.c == null)
      this.c = "";
    return new h(this.a, this.c, 0);
  }

  public final i a(f paramf, String paramString)
  {
    if (this.a == null)
      this.a = new HashMap();
    while (paramString == null)
    {
      this.a.remove(paramf);
      return this;
      if (!this.b)
        continue;
      this.a = new HashMap(this.a);
      this.b = false;
    }
    this.a.put(paramf, paramString);
    return this;
  }

  public final i a(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("payload XML argument cannot be null");
    this.c = paramString;
    return this;
  }

  public final i a(String paramString1, String paramString2)
  {
    return a(f.a("http://www.w3.org/XML/1998/namespace", paramString1, "xmlns"), paramString2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.i
 * JD-Core Version:    0.6.0
 */