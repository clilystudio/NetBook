package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.io.IOException;
import java.io.OutputStream;

final class g extends b
{
  private final OutputStream b;
  private int c;

  public g(OutputStream paramOutputStream, int paramInt)
  {
    this.b = paramOutputStream;
    this.c = paramInt;
  }

  public final void close()
  {
    if (this.a);
    do
    {
      return;
      this.a = true;
    }
    while (this.c <= 0);
    throw new IOException("unexpected end of stream");
  }

  public final void flush()
  {
    if (this.a)
      return;
    this.b.flush();
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a();
    a.a(paramArrayOfByte.length, paramInt1, paramInt2);
    if (paramInt2 > this.c)
      throw new IOException("expected " + this.c + " bytes but received " + paramInt2);
    this.b.write(paramArrayOfByte, paramInt1, paramInt2);
    this.c -= paramInt2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.g
 * JD-Core Version:    0.6.0
 */