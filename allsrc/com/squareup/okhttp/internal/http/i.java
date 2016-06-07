package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.l;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.f;

final class i extends e
{
  private long b;

  public i(d paramd, long paramLong)
  {
    super(paramd, 0);
    this.b = paramLong;
    if (this.b == 0L)
      a(true);
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.a)
      throw new IllegalStateException("closed");
    if (this.b == 0L)
      return -1L;
    long l = d.b(this.c).a(paramf, Math.min(this.b, paramLong));
    if (l == -1L)
    {
      b();
      throw new ProtocolException("unexpected end of stream");
    }
    this.b -= l;
    if (this.b == 0L)
      a(true);
    return l;
  }

  public final void close()
  {
    if (this.a)
      return;
    if ((this.b != 0L) && (!l.a(this, 100, TimeUnit.MILLISECONDS)))
      b();
    this.a = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.i
 * JD-Core Version:    0.6.0
 */