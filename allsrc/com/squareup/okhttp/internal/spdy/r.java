package com.squareup.okhttp.internal.spdy;

import okio.f;
import okio.k;
import okio.y;

final class r extends k
{
  r(q paramq, y paramy)
  {
    super(paramy);
  }

  public final long a(f paramf, long paramLong)
  {
    if (q.a(this.a) == 0);
    long l;
    do
    {
      return -1L;
      l = super.a(paramf, Math.min(paramLong, q.a(this.a)));
    }
    while (l == -1L);
    q.a(this.a, (int)(q.a(this.a) - l));
    return l;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.r
 * JD-Core Version:    0.6.0
 */