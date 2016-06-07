package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.J;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.n;
import com.squareup.okhttp.v;
import java.io.EOFException;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okio.o;
import okio.x;
import okio.y;

public final class d
{
  private final n a;
  private final com.squareup.okhttp.m b;
  private final Socket c;
  private final okio.i d;
  private final okio.h e;
  private int f = 0;
  private int g = 0;

  public d(n paramn, com.squareup.okhttp.m paramm, Socket paramSocket)
  {
    this.a = paramn;
    this.b = paramm;
    this.c = paramSocket;
    this.d = o.a(o.b(paramSocket));
    this.e = o.a(o.a(paramSocket));
  }

  public final x a(long paramLong)
  {
    if (this.f != 1)
      throw new IllegalStateException("state: " + this.f);
    this.f = 2;
    return new h(this, paramLong, 0);
  }

  public final y a(m paramm)
  {
    if (this.f != 4)
      throw new IllegalStateException("state: " + this.f);
    this.f = 5;
    return new g(this, paramm);
  }

  public final void a()
  {
    this.g = 1;
    if (this.f == 0)
    {
      this.g = 0;
      b.b.a(this.a, this.b);
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0)
      this.d.a().a(paramInt1, TimeUnit.MILLISECONDS);
    if (paramInt2 != 0)
      this.e.a().a(paramInt2, TimeUnit.MILLISECONDS);
  }

  public final void a(u paramu)
  {
    if (this.f != 1)
      throw new IllegalStateException("state: " + this.f);
    this.f = 3;
    paramu.a(this.e);
  }

  public final void a(com.squareup.okhttp.u paramu, String paramString)
  {
    if (this.f != 0)
      throw new IllegalStateException("state: " + this.f);
    this.e.b(paramString).b("\r\n");
    int i = 0;
    int j = paramu.a();
    while (i < j)
    {
      this.e.b(paramu.a(i)).b(": ").b(paramu.b(i)).b("\r\n");
      i++;
    }
    this.e.b("\r\n");
    this.f = 1;
  }

  public final void a(v paramv)
  {
    while (true)
    {
      String str = this.d.n();
      if (str.length() == 0)
        break;
      b.b.a(paramv, str);
    }
  }

  public final y b(long paramLong)
  {
    if (this.f != 4)
      throw new IllegalStateException("state: " + this.f);
    this.f = 5;
    return new i(this, paramLong);
  }

  public final void b()
  {
    this.g = 2;
    if (this.f == 0)
    {
      this.f = 6;
      this.b.c().close();
    }
  }

  public final boolean c()
  {
    return this.f == 6;
  }

  public final void d()
  {
    this.e.flush();
  }

  public final long e()
  {
    return this.d.c().b();
  }

  public final boolean f()
  {
    try
    {
      int i = this.c.getSoTimeout();
      try
      {
        this.c.setSoTimeout(1);
        boolean bool = this.d.d();
        return !bool;
      }
      finally
      {
        this.c.setSoTimeout(i);
      }
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public final J g()
  {
    if ((this.f != 1) && (this.f != 3))
      throw new IllegalStateException("state: " + this.f);
    IOException localIOException;
    try
    {
      z localz;
      J localJ;
      do
      {
        localz = z.a(this.d.n());
        localJ = new J().a(localz.a).a(localz.b).a(localz.c);
        v localv = new v();
        a(localv);
        localv.a(r.c, localz.a.toString());
        localJ.a(localv.a());
      }
      while (localz.b == 100);
      this.f = 4;
      return localJ;
    }
    catch (EOFException localEOFException)
    {
      localIOException = new IOException("unexpected end of stream on " + this.b + " (recycle count=" + b.b.b(this.b) + ")");
      localIOException.initCause(localEOFException);
    }
    throw localIOException;
  }

  public final x h()
  {
    if (this.f != 1)
      throw new IllegalStateException("state: " + this.f);
    this.f = 2;
    return new f(this, 0);
  }

  public final y i()
  {
    if (this.f != 4)
      throw new IllegalStateException("state: " + this.f);
    this.f = 5;
    return new j(this, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.d
 * JD-Core Version:    0.6.0
 */