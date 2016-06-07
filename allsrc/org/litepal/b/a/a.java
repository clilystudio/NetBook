package org.litepal.b.a;

import java.lang.reflect.Field;

public final class a
{
  private String a;
  private String b;
  private String c;
  private Field d;
  private Field e;
  private int f;

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(Field paramField)
  {
    this.d = paramField;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final void b(Field paramField)
  {
    this.e = paramField;
  }

  public final String c()
  {
    return this.c;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
  }

  public final Field d()
  {
    return this.d;
  }

  public final Field e()
  {
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof a))
    {
      a locala = (a)paramObject;
      if ((paramObject != null) && (locala != null) && (locala.f == this.f) && (locala.c.equals(this.c)))
      {
        if ((locala.a.equals(this.a)) && (locala.b.equals(this.b)))
          return true;
        if ((locala.a.equals(this.b)) && (locala.b.equals(this.a)))
          return true;
      }
    }
    return false;
  }

  public final int f()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.a.a
 * JD-Core Version:    0.6.0
 */