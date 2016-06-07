package com.mob.tools.a;

import android.support.design.widget.K;
import java.io.InputStream;

public final class a extends InputStream
{
  private InputStream a;
  private long b;
  private K c;

  public a(InputStream paramInputStream)
  {
    this.a = paramInputStream;
  }

  public final void a(K paramK)
  {
    this.c = paramK;
  }

  public final int available()
  {
    return this.a.available();
  }

  public final void close()
  {
    this.a.close();
  }

  public final void mark(int paramInt)
  {
    this.a.mark(paramInt);
  }

  public final boolean markSupported()
  {
    return this.a.markSupported();
  }

  public final int read()
  {
    int i = this.a.read();
    if (i >= 0)
      this.b = (1L + this.b);
    return i;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
    if (i > 0)
      this.b += i;
    return i;
  }

  public final void reset()
  {
    monitorenter;
    try
    {
      this.a.reset();
      this.b = 0L;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final long skip(long paramLong)
  {
    return this.a.skip(paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.a
 * JD-Core Version:    0.6.0
 */