package com.squareup.okhttp;

public final class l
{
  private final String a;
  private final String b;

  public l(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof l)) && (com.squareup.okhttp.internal.l.a(this.a, ((l)paramObject).a)) && (com.squareup.okhttp.internal.l.a(this.b, ((l)paramObject).b));
  }

  public final int hashCode()
  {
    if (this.b != null);
    for (int i = this.b.hashCode(); ; i = 0)
    {
      int j = 31 * (i + 899);
      String str = this.a;
      int k = 0;
      if (str != null)
        k = this.a.hashCode();
      return j + k;
    }
  }

  public final String toString()
  {
    return this.a + " realm=\"" + this.b + "\"";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.l
 * JD-Core Version:    0.6.0
 */