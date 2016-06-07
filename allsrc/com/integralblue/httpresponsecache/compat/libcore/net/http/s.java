package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.IOException;
import java.io.OutputStream;
import java.net.CacheRequest;

final class s extends CacheRequest
{
  private final com.b.a b;
  private OutputStream c;
  private boolean d;
  private OutputStream e;

  public s(p paramp, com.b.a parama)
  {
    this.b = parama;
    this.c = parama.a(1);
    this.e = new t(this, this.c, paramp, parama);
  }

  public final void abort()
  {
    synchronized (this.a)
    {
      if (this.d)
        return;
      this.d = true;
      p.b(this.a);
      com.arcsoft.hpay100.a.a.b(this.c);
      try
      {
        this.b.b();
        return;
      }
      catch (IOException localIOException)
      {
        return;
      }
    }
  }

  public final OutputStream getBody()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.s
 * JD-Core Version:    0.6.0
 */