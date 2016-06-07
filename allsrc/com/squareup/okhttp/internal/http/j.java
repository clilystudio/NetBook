package com.squareup.okhttp.internal.http;

import okio.f;
import okio.i;

final class j extends e
{
  private boolean b;

  private j(d paramd)
  {
    super(paramd, 0);
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.a)
      throw new IllegalStateException("closed");
    if (this.b)
      return -1L;
    long l = d.b(this.c).a(paramf, paramLong);
    if (l == -1L)
    {
      this.b = true;
      a(false);
      return -1L;
    }
    return l;
  }

  public final void close()
  {
    if (this.a)
      return;
    if (!this.b)
      b();
    this.a = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.j
 * JD-Core Version:    0.6.0
 */