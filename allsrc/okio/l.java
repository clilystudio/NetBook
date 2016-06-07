package okio;

import java.util.concurrent.TimeUnit;

public final class l extends z
{
  private z b;

  public l(z paramz)
  {
    if (paramz == null)
      throw new IllegalArgumentException("delegate == null");
    this.b = paramz;
  }

  public final l a(z paramz)
  {
    if (paramz == null)
      throw new IllegalArgumentException("delegate == null");
    this.b = paramz;
    return this;
  }

  public final z a()
  {
    return this.b;
  }

  public final z a(long paramLong)
  {
    return this.b.a(paramLong);
  }

  public final z a(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.b.a(paramLong, paramTimeUnit);
  }

  public final long d()
  {
    return this.b.d();
  }

  public final long d_()
  {
    return this.b.d_();
  }

  public final boolean e_()
  {
    return this.b.e_();
  }

  public final z f()
  {
    return this.b.f();
  }

  public final z f_()
  {
    return this.b.f_();
  }

  public final void g()
  {
    this.b.g();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.l
 * JD-Core Version:    0.6.0
 */