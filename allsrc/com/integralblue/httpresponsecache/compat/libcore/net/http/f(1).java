package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;

final class f extends a
{
  private int d;

  public f(InputStream paramInputStream, CacheRequest paramCacheRequest, m paramm, int paramInt)
  {
    super(paramInputStream, paramm, paramCacheRequest);
    this.d = paramInt;
    if (this.d == 0)
      a(true);
  }

  public final int available()
  {
    a();
    if (this.d == 0)
      return 0;
    return Math.min(this.a.available(), this.d);
  }

  public final void close()
  {
    if (this.c);
    do
    {
      return;
      this.c = true;
    }
    while (this.d == 0);
    b();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    com.arcsoft.hpay100.a.a.a(paramArrayOfByte.length, paramInt1, paramInt2);
    a();
    if (this.d == 0)
      return -1;
    int i = this.a.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.d));
    if (i == -1)
    {
      b();
      throw new IOException("unexpected end of stream");
    }
    this.d -= i;
    a(paramArrayOfByte, paramInt1, i);
    if (this.d == 0)
      a(true);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.f
 * JD-Core Version:    0.6.0
 */