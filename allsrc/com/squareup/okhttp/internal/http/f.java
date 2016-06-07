package com.squareup.okhttp.internal.http;

import okio.h;
import okio.l;
import okio.x;
import okio.z;

final class f
  implements x
{
  private final l a = new l(d.a(this.c).a());
  private boolean b;

  private f(d paramd)
  {
  }

  public final z a()
  {
    return this.a;
  }

  public final void a_(okio.f paramf, long paramLong)
  {
    if (this.b)
      throw new IllegalStateException("closed");
    if (paramLong == 0L)
      return;
    d.a(this.c).h(paramLong);
    d.a(this.c).b("\r\n");
    d.a(this.c).a_(paramf, paramLong);
    d.a(this.c).b("\r\n");
  }

  public final void close()
  {
    monitorenter;
    try
    {
      boolean bool = this.b;
      if (bool);
      while (true)
      {
        return;
        this.b = true;
        d.a(this.c).b("0\r\n\r\n");
        d.a(this.c, this.a);
        d.a(this.c, 3);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void flush()
  {
    monitorenter;
    try
    {
      boolean bool = this.b;
      if (bool);
      while (true)
      {
        return;
        d.a(this.c).flush();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.f
 * JD-Core Version:    0.6.0
 */