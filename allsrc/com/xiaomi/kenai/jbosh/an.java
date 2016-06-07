package com.xiaomi.kenai.jbosh;

import java.io.Serializable;

public class an
  implements Serializable
{
  private static final String a = "".intern();
  private String b;
  private String c;
  private String d;

  public an(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, a);
  }

  public an(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null);
    for (String str = a; ; str = paramString1.intern())
    {
      this.b = str;
      if (paramString2 != null)
        break;
      throw new IllegalArgumentException("invalid QName local part");
    }
    this.c = paramString2.intern();
    if (paramString3 == null)
      throw new IllegalArgumentException("invalid QName prefix");
    this.d = paramString3.intern();
  }

  public String a()
  {
    return this.b;
  }

  public String b()
  {
    return this.c;
  }

  public String c()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (!(paramObject instanceof an))
      return false;
    return (this.b == ((an)paramObject).b) && (this.c == ((an)paramObject).c);
  }

  public final int hashCode()
  {
    return this.b.hashCode() ^ this.c.hashCode();
  }

  public String toString()
  {
    if (this.b == a)
      return this.c;
    return "{" + this.b + '}' + this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.an
 * JD-Core Version:    0.6.0
 */