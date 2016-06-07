package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.d;
import com.squareup.okhttp.internal.http.q;
import com.squareup.okhttp.internal.http.w;
import com.squareup.okhttp.internal.http.x;
import com.squareup.okhttp.internal.http.y;
import com.squareup.okhttp.internal.k;
import com.squareup.okhttp.internal.spdy.I;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.util.List;

public final class m
{
  private final n a;
  private final L b;
  private Socket c;
  private boolean d = false;
  private d e;
  private com.squareup.okhttp.internal.spdy.A f;
  private Protocol g = Protocol.HTTP_1_1;
  private long h;
  private t i;
  private int j;
  private Object k;

  public m(n paramn, L paramL)
  {
    this.a = paramn;
    this.b = paramL;
  }

  final com.squareup.okhttp.internal.http.A a(com.squareup.okhttp.internal.http.m paramm)
  {
    if (this.f != null)
      return new y(paramm, this.f);
    return new q(paramm, this.e);
  }

  final void a(A paramA, Object paramObject, C paramC)
  {
    a(paramObject);
    List localList;
    int i1;
    int i2;
    w localw;
    x localx;
    if (!this.d)
    {
      localList = this.b.a.d;
      i1 = paramA.a();
      i2 = paramA.b();
      int i3 = paramA.c();
      boolean bool = paramA.p();
      if (this.d)
        throw new IllegalStateException("already connected");
      localw = new w(this, this.a);
      if (this.b.a.c == null)
        break label282;
      localx = localw.a(i1, i2, i3, paramC, this.b, localList, bool);
    }
    label145: int m;
    int n;
    while (true)
    {
      this.c = localx.a;
      this.i = localx.c;
      Protocol localProtocol;
      if (localx.b == null)
      {
        localProtocol = Protocol.HTTP_1_1;
        this.g = localProtocol;
      }
      try
      {
        if ((this.g == Protocol.SPDY_3) || (this.g == Protocol.HTTP_2))
        {
          this.c.setSoTimeout(0);
          this.f = new I(this.b.a.a, true, this.c).a(this.g).a();
          this.f.e();
        }
        while (true)
        {
          this.d = true;
          if (j())
            paramA.m().b(this);
          paramA.q().b(this.b);
          m = paramA.b();
          n = paramA.c();
          if (this.d)
            break label390;
          throw new IllegalStateException("setTimeouts - not connected");
          label282: if (!localList.contains(p.c))
            throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + localList));
          localx = localw.a(i1, i2, this.b);
          break;
          localProtocol = localx.b;
          break label145;
          this.e = new d(this.a, this, this.c);
        }
      }
      catch (IOException localIOException2)
      {
        throw new RouteException(localIOException2);
      }
    }
    label390: if (this.e != null);
    try
    {
      this.c.setSoTimeout(m);
      this.e.a(m, n);
      return;
    }
    catch (IOException localIOException1)
    {
    }
    throw new RouteException(localIOException1);
  }

  final void a(Protocol paramProtocol)
  {
    if (paramProtocol == null)
      throw new IllegalArgumentException("protocol == null");
    this.g = paramProtocol;
  }

  final void a(Object paramObject)
  {
    if (j())
      return;
    synchronized (this.a)
    {
      if (this.k != null)
        throw new IllegalStateException("Connection already has an owner!");
    }
    this.k = paramObject;
    monitorexit;
  }

  final boolean a()
  {
    synchronized (this.a)
    {
      if (this.k == null)
        return false;
      this.k = null;
      return true;
    }
  }

  public final L b()
  {
    return this.b;
  }

  public final Socket c()
  {
    return this.c;
  }

  final boolean d()
  {
    return (!this.c.isClosed()) && (!this.c.isInputShutdown()) && (!this.c.isOutputShutdown());
  }

  final boolean e()
  {
    if (this.e != null)
      return this.e.f();
    return true;
  }

  final void f()
  {
    if (this.f != null)
      throw new IllegalStateException("spdyConnection != null");
    this.h = System.nanoTime();
  }

  final boolean g()
  {
    return (this.f == null) || (this.f.b());
  }

  final long h()
  {
    if (this.f == null)
      return this.h;
    return this.f.c();
  }

  public final t i()
  {
    return this.i;
  }

  final boolean j()
  {
    return this.f != null;
  }

  public final Protocol k()
  {
    return this.g;
  }

  final void l()
  {
    this.j = (1 + this.j);
  }

  final int m()
  {
    return this.j;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(this.b.a.a).append(":").append(this.b.a.b).append(", proxy=").append(this.b.b).append(" hostAddress=").append(this.b.c.getAddress().getHostAddress()).append(" cipherSuite=");
    if (this.i != null);
    for (String str = this.i.a(); ; str = "none")
      return str + " protocol=" + this.g + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.m
 * JD-Core Version:    0.6.0
 */