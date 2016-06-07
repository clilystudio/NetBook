package com.nostra13.universalimageloader.core.assist;

import java.io.InputStream;

public final class a extends InputStream
{
  private final InputStream a;
  private final int b;

  public a(InputStream paramInputStream, int paramInt)
  {
    this.a = paramInputStream;
    this.b = paramInt;
  }

  public final int available()
  {
    return this.b;
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
    return this.a.read();
  }

  public final int read(byte[] paramArrayOfByte)
  {
    return this.a.read(paramArrayOfByte);
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.a.read(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final void reset()
  {
    this.a.reset();
  }

  public final long skip(long paramLong)
  {
    return this.a.skip(paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.a
 * JD-Core Version:    0.6.0
 */