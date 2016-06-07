package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.InputStream;
import java.net.CacheRequest;

final class J extends a
{
  private boolean d;

  J(InputStream paramInputStream, CacheRequest paramCacheRequest, m paramm)
  {
    super(paramInputStream, paramm, paramCacheRequest);
  }

  public final int available()
  {
    a();
    if (this.a == null)
      return 0;
    return this.a.available();
  }

  public final void close()
  {
    if (this.c);
    do
    {
      return;
      this.c = true;
    }
    while (this.d);
    b();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    com.arcsoft.hpay100.a.a.a(paramArrayOfByte.length, paramInt1, paramInt2);
    a();
    if ((this.a == null) || (this.d))
      return -1;
    int i = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
    if (i == -1)
    {
      this.d = true;
      a(false);
      return -1;
    }
    a(paramArrayOfByte, paramInt1, i);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.J
 * JD-Core Version:    0.6.0
 */