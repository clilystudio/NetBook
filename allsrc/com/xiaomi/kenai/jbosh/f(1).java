package com.xiaomi.kenai.jbosh;

public final class f
{
  private final an a;

  private f(an paraman)
  {
    this.a = paraman;
  }

  public static f a(String paramString)
  {
    return a("xm", paramString, null);
  }

  public static f a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, null);
  }

  public static f a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
      throw new IllegalArgumentException("URI is required and may not be null/empty");
    if ((paramString2 == null) || (paramString2.length() == 0))
      throw new IllegalArgumentException("Local arg is required and may not be null/empty");
    if ((paramString3 == null) || (paramString3.length() == 0))
      return new f(new an(paramString1, paramString2));
    return new f(new an(paramString1, paramString2, paramString3));
  }

  public final String a()
  {
    return this.a.a();
  }

  final boolean a(an paraman)
  {
    return this.a.equals(paraman);
  }

  public final String b()
  {
    return this.a.b();
  }

  public final String c()
  {
    return this.a.c();
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof f))
    {
      f localf = (f)paramObject;
      return this.a.equals(localf.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.f
 * JD-Core Version:    0.6.0
 */