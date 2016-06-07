package com.nostra13.universalimageloader.core.assist;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class b extends FilterInputStream
{
  public b(InputStream paramInputStream)
  {
    super(paramInputStream);
  }

  public final long skip(long paramLong)
  {
    long l1 = 0L;
    while (l1 < paramLong)
    {
      long l2 = this.in.skip(paramLong - l1);
      if (l2 == 0L)
      {
        if (read() < 0)
          break;
        l2 = 1L;
      }
      l1 = l2 + l1;
    }
    return l1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.b
 * JD-Core Version:    0.6.0
 */