package com.integralblue.httpresponsecache.compat.libcore.net.http;

public final class c
{
  final String a;
  final String b;

  public c(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof c)) && (((c)paramObject).a.equals(this.a)) && (((c)paramObject).b.equals(this.b));
  }

  public final int hashCode()
  {
    return this.a.hashCode() + 31 * this.b.hashCode();
  }

  public final String toString()
  {
    return "Challenge[" + this.a + " " + this.b + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.c
 * JD-Core Version:    0.6.0
 */