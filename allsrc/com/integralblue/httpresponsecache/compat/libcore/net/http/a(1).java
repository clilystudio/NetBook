package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.libcore.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;

abstract class a extends InputStream
{
  protected final InputStream a;
  protected final m b;
  protected boolean c;
  private final CacheRequest d;
  private final OutputStream e;

  a(InputStream paramInputStream, m paramm, CacheRequest paramCacheRequest)
  {
    this.a = paramInputStream;
    this.b = paramm;
    if (paramCacheRequest != null);
    for (OutputStream localOutputStream = paramCacheRequest.getBody(); ; localOutputStream = null)
    {
      if (localOutputStream == null)
        paramCacheRequest = null;
      this.e = localOutputStream;
      this.d = paramCacheRequest;
      return;
    }
  }

  protected final void a()
  {
    if (this.c)
      throw new IOException("stream closed");
  }

  protected final void a(boolean paramBoolean)
  {
    if (this.d != null)
      this.e.close();
    this.b.a(paramBoolean);
  }

  protected final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.e != null)
      this.e.write(paramArrayOfByte, paramInt1, paramInt2);
  }

  protected final void b()
  {
    if (this.d != null)
      this.d.abort();
    this.b.a(false);
  }

  public final int read()
  {
    return b.a(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.a
 * JD-Core Version:    0.6.0
 */