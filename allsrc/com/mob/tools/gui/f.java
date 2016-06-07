package com.mob.tools.gui;

import java.io.FilterInputStream;
import java.io.InputStream;

final class f extends FilterInputStream
{
  private InputStream a;

  protected f(InputStream paramInputStream)
  {
    super(paramInputStream);
    this.a = paramInputStream;
  }

  public final long skip(long paramLong)
  {
    long l1 = 0L;
    while (l1 < paramLong)
    {
      long l2 = this.a.skip(paramLong - l1);
      if (l2 == 0L)
        break;
      l1 += l2;
    }
    return l1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.f
 * JD-Core Version:    0.6.0
 */