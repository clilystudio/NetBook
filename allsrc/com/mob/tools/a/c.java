package com.mob.tools.a;

import android.support.design.widget.K;
import java.io.InputStream;

public abstract class c
{
  private long a;
  private K b;

  protected abstract InputStream a();

  public final void a(long paramLong)
  {
    this.a = paramLong;
  }

  public final void a(K paramK)
  {
    this.b = paramK;
  }

  protected abstract long b();

  public final InputStream c()
  {
    a locala = new a(a());
    locala.a(this.b);
    if (this.a > 0L)
      locala.skip(this.a);
    return locala;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.c
 * JD-Core Version:    0.6.0
 */