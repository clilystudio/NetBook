package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import okio.i;
import okio.x;
import okio.y;
import okio.z;

public final class M
{
  long a = 0L;
  long b;
  final N c;
  private final int d;
  private final A e;
  private List<d> f;
  private final O g;
  private final P h = new P(this);
  private final P i = new P(this);
  private ErrorCode j = null;

  static
  {
    if (!M.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      k = bool;
      return;
    }
  }

  M(int paramInt, A paramA, boolean paramBoolean1, boolean paramBoolean2, List<d> paramList)
  {
    if (paramA == null)
      throw new NullPointerException("connection == null");
    if (paramList == null)
      throw new NullPointerException("requestHeaders == null");
    this.d = paramInt;
    this.e = paramA;
    this.b = paramA.f.e(65536);
    this.g = new O(this, paramA.e.e(65536), 0);
    this.c = new N(this);
    O.a(this.g, paramBoolean2);
    N.a(this.c, paramBoolean1);
  }

  private boolean d(ErrorCode paramErrorCode)
  {
    if ((!k) && (Thread.holdsLock(this)))
      throw new AssertionError();
    monitorenter;
    try
    {
      if (this.j != null)
        return false;
      if ((O.a(this.g)) && (N.a(this.c)))
        return false;
    }
    finally
    {
      monitorexit;
    }
    this.j = paramErrorCode;
    notifyAll();
    monitorexit;
    this.e.b(this.d);
    return true;
  }

  private void i()
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    throw new InterruptedIOException();
  }

  public final int a()
  {
    return this.d;
  }

  final void a(long paramLong)
  {
    this.b = (paramLong + this.b);
    if (paramLong > 0L)
      notifyAll();
  }

  public final void a(ErrorCode paramErrorCode)
  {
    if (!d(paramErrorCode))
      return;
    this.e.b(this.d, paramErrorCode);
  }

  final void a(List<d> paramList, HeadersMode paramHeadersMode)
  {
    if ((!k) && (Thread.holdsLock(this)))
      throw new AssertionError();
    boolean bool = true;
    monitorenter;
    do
      while (true)
      {
        try
        {
          if (this.f == null)
          {
            if (!paramHeadersMode.failIfHeadersAbsent())
              continue;
            localErrorCode = ErrorCode.PROTOCOL_ERROR;
            monitorexit;
            if (localErrorCode == null)
              break;
            b(localErrorCode);
            return;
            this.f = paramList;
            bool = b();
            notifyAll();
            localErrorCode = null;
            continue;
          }
        }
        finally
        {
          monitorexit;
        }
        if (paramHeadersMode.failIfHeadersPresent())
        {
          localErrorCode = ErrorCode.STREAM_IN_USE;
          continue;
        }
        ArrayList localArrayList = new ArrayList();
        localArrayList.addAll(this.f);
        localArrayList.addAll(paramList);
        this.f = localArrayList;
        ErrorCode localErrorCode = null;
      }
    while (bool);
    this.e.b(this.d);
  }

  final void a(i parami, int paramInt)
  {
    if ((!k) && (Thread.holdsLock(this)))
      throw new AssertionError();
    this.g.a(parami, paramInt);
  }

  public final void b(ErrorCode paramErrorCode)
  {
    if (!d(paramErrorCode))
      return;
    this.e.a(this.d, paramErrorCode);
  }

  public final boolean b()
  {
    monitorenter;
    try
    {
      ErrorCode localErrorCode = this.j;
      int m = 0;
      if (localErrorCode != null);
      while (true)
      {
        return m;
        if (((O.a(this.g)) || (O.b(this.g))) && ((N.a(this.c)) || (N.b(this.c))))
        {
          List localList = this.f;
          m = 0;
          if (localList != null)
            continue;
        }
        m = 1;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void c(ErrorCode paramErrorCode)
  {
    monitorenter;
    try
    {
      if (this.j == null)
      {
        this.j = paramErrorCode;
        notifyAll();
      }
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final boolean c()
  {
    if ((0x1 & this.d) == 1);
    for (int m = 1; this.e.b == m; m = 0)
      return true;
    return false;
  }

  public final List<d> d()
  {
    monitorenter;
    try
    {
      this.h.c();
    }
    finally
    {
      try
      {
        if ((this.f != null) || (this.j != null))
          break label45;
        i();
      }
      finally
      {
        this.h.b();
      }
      monitorexit;
    }
    label45: this.h.b();
    if (this.f != null)
    {
      List localList = this.f;
      monitorexit;
      return localList;
    }
    throw new IOException("stream was reset: " + this.j);
  }

  public final z e()
  {
    return this.h;
  }

  public final y f()
  {
    return this.g;
  }

  public final x g()
  {
    monitorenter;
    try
    {
      if ((this.f == null) && (!c()))
        throw new IllegalStateException("reply before requesting the sink");
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
    return this.c;
  }

  final void h()
  {
    if ((!k) && (Thread.holdsLock(this)))
      throw new AssertionError();
    monitorenter;
    try
    {
      O.a(this.g, true);
      boolean bool = b();
      notifyAll();
      monitorexit;
      if (!bool)
        this.e.b(this.d);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.M
 * JD-Core Version:    0.6.0
 */