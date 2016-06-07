package com.squareup.okhttp.internal.spdy;

import java.io.EOFException;
import java.io.IOException;
import okio.f;
import okio.i;
import okio.y;
import okio.z;

final class O
  implements y
{
  private final f a = new f();
  private final f b = new f();
  private final long c;
  private boolean d;
  private boolean e;

  static
  {
    if (!M.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      f = bool;
      return;
    }
  }

  private O(M paramM, long paramLong)
  {
    this.c = paramLong;
  }

  private void b()
  {
    M.c(this.g).c();
    try
    {
      if (this.b.b() == 0L)
        if ((!this.e) && (!this.d) && (M.d(this.g) == null))
          M.e(this.g);
    }
    finally
    {
      M.c(this.g).b();
    }
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    synchronized (this.g)
    {
      b();
      if (this.d)
        throw new IOException("stream closed");
    }
    if (M.d(this.g) != null)
      throw new IOException("stream was reset: " + M.d(this.g));
    if (this.b.b() == 0L)
    {
      monitorexit;
      return -1L;
    }
    long l = this.b.a(paramf, Math.min(paramLong, this.b.b()));
    M localM2 = this.g;
    localM2.a = (l + localM2.a);
    if (this.g.a >= M.a(this.g).e.e(65536) / 2)
    {
      M.a(this.g).a(M.b(this.g), this.g.a);
      this.g.a = 0L;
    }
    monitorexit;
    synchronized (M.a(this.g))
    {
      A localA2 = M.a(this.g);
      localA2.c = (l + localA2.c);
      if (M.a(this.g).c >= M.a(this.g).e.e(65536) / 2)
      {
        M.a(this.g).a(0, M.a(this.g).c);
        M.a(this.g).c = 0L;
      }
      return l;
    }
  }

  public final z a()
  {
    return M.c(this.g);
  }

  final void a(i parami, long paramLong)
  {
    if ((!f) && (Thread.holdsLock(this.g)))
      throw new AssertionError();
    while (true)
    {
      Object localObject2;
      paramLong -= localObject2;
      synchronized (this.g)
      {
        if (this.b.b() == 0L)
        {
          j = 1;
          this.b.a(this.a);
          if (j != 0)
            this.g.notifyAll();
          if (paramLong > 0L);
          boolean bool;
          synchronized (this.g)
          {
            bool = this.e;
            int i;
            if (paramLong + this.b.b() > this.c)
            {
              i = 1;
              if (i != 0)
              {
                parami.f(paramLong);
                this.g.b(ErrorCode.FLOW_CONTROL_ERROR);
                return;
              }
            }
            else
            {
              i = 0;
            }
          }
          if (bool)
          {
            parami.f(paramLong);
            return;
          }
          long l = parami.a(this.a, paramLong);
          if (l != -1L)
            continue;
          throw new EOFException();
        }
        int j = 0;
      }
    }
  }

  public final void close()
  {
    synchronized (this.g)
    {
      this.d = true;
      this.b.p();
      this.g.notifyAll();
      M.f(this.g);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.O
 * JD-Core Version:    0.6.0
 */