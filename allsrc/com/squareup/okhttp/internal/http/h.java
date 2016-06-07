package com.squareup.okhttp.internal.http;

import java.net.ProtocolException;
import okio.f;
import okio.x;
import okio.z;

final class h
  implements x
{
  private final okio.l a = new okio.l(d.a(this.d).a());
  private boolean b;
  private long c;

  private h(d paramd, long paramLong)
  {
    this.c = paramLong;
  }

  public final z a()
  {
    return this.a;
  }

  public final void a_(f paramf, long paramLong)
  {
    if (this.b)
      throw new IllegalStateException("closed");
    com.squareup.okhttp.internal.l.a(paramf.b(), 0L, paramLong);
    if (paramLong > this.c)
      throw new ProtocolException("expected " + this.c + " bytes but received " + paramLong);
    d.a(this.d).a_(paramf, paramLong);
    this.c -= paramLong;
  }

  public final void close()
  {
    if (this.b)
      return;
    this.b = true;
    if (this.c > 0L)
      throw new ProtocolException("unexpected end of stream");
    d.a(this.d, this.a);
    d.a(this.d, 3);
  }

  public final void flush()
  {
    if (this.b)
      return;
    d.a(this.d).flush();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.h
 * JD-Core Version:    0.6.0
 */