package com.squareup.okhttp.internal.spdy;

import okio.f;
import okio.x;
import okio.z;

final class N
  implements x
{
  private final f a = new f();
  private boolean b;
  private boolean c;

  static
  {
    if (!M.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      return;
    }
  }

  N(M paramM)
  {
  }

  private void a(boolean paramBoolean)
  {
    synchronized (this.e)
    {
      M.g(this.e).c();
    }
    M.g(this.e).b();
    M.h(this.e);
    long l = Math.min(this.e.b, this.a.b());
    M localM2 = this.e;
    localM2.b -= l;
    monitorexit;
    M.g(this.e).c();
    try
    {
      A localA = M.a(this.e);
      int i = M.b(this.e);
      if ((paramBoolean) && (l == this.a.b()));
      for (boolean bool = true; ; bool = false)
      {
        localA.a(i, bool, this.a, l);
        return;
      }
    }
    finally
    {
      M.g(this.e).b();
    }
    throw localObject3;
  }

  public final z a()
  {
    return M.g(this.e);
  }

  public final void a_(f paramf, long paramLong)
  {
    if ((!d) && (Thread.holdsLock(this.e)))
      throw new AssertionError();
    this.a.a_(paramf, paramLong);
    while (this.a.b() >= 16384L)
      a(false);
  }

  public final void close()
  {
    if ((!d) && (Thread.holdsLock(this.e)))
      throw new AssertionError();
    synchronized (this.e)
    {
      if (this.b)
        return;
      if (this.e.c.c)
        break label113;
      if (this.a.b() > 0L)
      {
        if (this.a.b() <= 0L)
          break label113;
        a(true);
      }
    }
    M.a(this.e).a(M.b(this.e), true, null, 0L);
    label113: synchronized (this.e)
    {
      this.b = true;
      M.a(this.e).d();
      M.f(this.e);
      return;
    }
  }

  public final void flush()
  {
    if ((!d) && (Thread.holdsLock(this.e)))
      throw new AssertionError();
    synchronized (this.e)
    {
      M.h(this.e);
      if (this.a.b() > 0L)
      {
        a(false);
        M.a(this.e).d();
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.N
 * JD-Core Version:    0.6.0
 */