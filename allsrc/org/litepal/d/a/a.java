package org.litepal.d.a;

public final class a
{
  private String a;
  private String b;
  private String c;
  private int d;

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final String c()
  {
    return this.c;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
  }

  public final int d()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof a))
    {
      a locala = (a)paramObject;
      if ((locala.a != null) && (locala.b != null) && (locala.d == this.d) && (locala.c.equals(this.c)))
      {
        if ((locala.a.equals(this.a)) && (locala.b.equals(this.b)) && (locala.c.equals(this.c)));
        do
          return true;
        while ((locala.a.equals(this.b)) && (locala.b.equals(this.a)) && (locala.c.equals(this.c)));
      }
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.a.a
 * JD-Core Version:    0.6.0
 */