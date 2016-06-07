package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.libcore.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;

final class d extends a
{
  private static final int d = 7;
  private int e = -1;
  private boolean f = true;

  d(InputStream paramInputStream, CacheRequest paramCacheRequest, m paramm)
  {
    super(paramInputStream, paramm, paramCacheRequest);
  }

  private void c()
  {
    if (this.e != -1)
      b.c(this.a);
    String str = b.c(this.a);
    int i = str.indexOf(";");
    if (i != -1)
      str = str.substring(0, i);
    try
    {
      this.e = Integer.parseInt(str.trim(), 16);
      if (this.e == 0)
      {
        this.f = false;
        this.b.q();
        a(true);
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new IOException("Expected a hex chunk size, but was " + str);
  }

  public final int available()
  {
    a();
    if ((!this.f) || (this.e == -1))
      return 0;
    return Math.min(this.a.available(), this.e);
  }

  public final void close()
  {
    if (this.c);
    do
    {
      return;
      this.c = true;
    }
    while (!this.f);
    b();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    com.arcsoft.hpay100.a.a.a(paramArrayOfByte.length, paramInt1, paramInt2);
    a();
    if (!this.f);
    do
    {
      return -1;
      if ((this.e != 0) && (this.e != -1))
        break;
      c();
    }
    while (!this.f);
    int i = this.a.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.e));
    if (i == -1)
    {
      b();
      throw new IOException("unexpected end of stream");
    }
    this.e -= i;
    a(paramArrayOfByte, paramInt1, i);
    if ((this.e == 0) && (this.a.available() >= d))
      c();
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.d
 * JD-Core Version:    0.6.0
 */