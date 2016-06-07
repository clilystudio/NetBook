package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.I;
import com.squareup.okhttp.J;
import com.squareup.okhttp.K;
import com.squareup.okhttp.L;
import java.net.Proxy;
import okio.o;
import okio.x;
import okio.y;

public final class q
  implements A
{
  private final m a;
  private final d b;

  public q(m paramm, d paramd)
  {
    this.a = paramm;
    this.b = paramd;
  }

  public final K a(I paramI)
  {
    y localy;
    if (!m.a(paramI))
      localy = this.b.b(0L);
    while (true)
    {
      return new t(paramI.f(), o.a(localy));
      if ("chunked".equalsIgnoreCase(paramI.b("Transfer-Encoding")))
      {
        localy = this.b.a(this.a);
        continue;
      }
      long l = r.a(paramI);
      if (l != -1L)
      {
        localy = this.b.b(l);
        continue;
      }
      localy = this.b.i();
    }
  }

  public final x a(C paramC, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(paramC.a("Transfer-Encoding")))
      return this.b.h();
    if (paramLong != -1L)
      return this.b.a(paramLong);
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }

  public final void a()
  {
    this.b.d();
  }

  public final void a(C paramC)
  {
    this.a.b();
    String str = b.a(paramC, this.a.f().b().b().type(), this.a.f().k());
    this.b.a(paramC.e(), str);
  }

  public final void a(u paramu)
  {
    this.b.a(paramu);
  }

  public final J b()
  {
    return this.b.g();
  }

  public final void c()
  {
    if (d())
    {
      this.b.a();
      return;
    }
    this.b.b();
  }

  public final boolean d()
  {
    if ("close".equalsIgnoreCase(this.a.d().a("Connection")));
    do
      return false;
    while (("close".equalsIgnoreCase(this.a.e().b("Connection"))) || (this.b.c()));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.q
 * JD-Core Version:    0.6.0
 */