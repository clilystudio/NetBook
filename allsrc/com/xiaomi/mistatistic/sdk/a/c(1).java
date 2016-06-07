package com.xiaomi.mistatistic.sdk.a;

public final class c
{
  private static c a = null;
  private int b = 3;
  private long c;
  private long d;

  public static c a()
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new c();
      c localc = a;
      return localc;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void b()
  {
    g.a().a(new d(this));
  }

  public final void c()
  {
    this.d = System.currentTimeMillis();
    if (this.b == 4)
      g.a().a(new e(this), this.c);
    g.b().a(new f(this));
  }

  public final boolean d()
  {
    if (w.b());
    do
    {
      do
      {
        do
        {
          return false;
          switch (this.b)
          {
          case 3:
          default:
            return false;
          case 0:
            return true;
          case 1:
          case 2:
          case 4:
          }
        }
        while (!r.a(r.b()));
        return true;
        new n();
      }
      while (n.d() < 50);
      return true;
    }
    while (System.currentTimeMillis() - this.d <= this.c);
    return true;
  }

  public final long e()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.c
 * JD-Core Version:    0.6.0
 */