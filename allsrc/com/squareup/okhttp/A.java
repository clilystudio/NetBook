package com.squareup.okhttp;

import android.support.design.widget.K;
import com.squareup.okhttp.internal.d;
import com.squareup.okhttp.internal.http.a;
import com.squareup.okhttp.internal.k;
import com.squareup.okhttp.internal.l;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public class A
  implements Cloneable
{
  private static final List<Protocol> a;
  private static final List<p> b;
  private static SSLSocketFactory c;
  private int A;
  private final k d;
  private r e;
  private Proxy f;
  private List<Protocol> g;
  private List<p> h;
  private final List<K> i = new ArrayList();
  private final List<K> j = new ArrayList();
  private ProxySelector k;
  private CookieHandler l;
  private K m;
  private c n;
  private SocketFactory o;
  private SSLSocketFactory p;
  private HostnameVerifier q;
  private j r;
  private b s;
  private n t;
  private d u;
  private boolean v = true;
  private boolean w = true;
  private boolean x = true;
  private int y;
  private int z;

  static
  {
    Protocol[] arrayOfProtocol = new Protocol[3];
    arrayOfProtocol[0] = Protocol.HTTP_2;
    arrayOfProtocol[1] = Protocol.SPDY_3;
    arrayOfProtocol[2] = Protocol.HTTP_1_1;
    a = l.a(arrayOfProtocol);
    p[] arrayOfp = new p[3];
    arrayOfp[0] = p.a;
    arrayOfp[1] = p.b;
    arrayOfp[2] = p.c;
    b = l.a(arrayOfp);
    com.squareup.okhttp.internal.b.b = new B();
  }

  public A()
  {
    this.d = new k();
    this.e = new r();
  }

  private A(A paramA)
  {
    this.d = paramA.d;
    this.e = paramA.e;
    this.f = paramA.f;
    this.g = paramA.g;
    this.h = paramA.h;
    this.i.addAll(paramA.i);
    this.j.addAll(paramA.j);
    this.k = paramA.k;
    this.l = paramA.l;
    this.n = paramA.n;
    if (this.n != null);
    for (K localK = this.n.a; ; localK = paramA.m)
    {
      this.m = localK;
      this.o = paramA.o;
      this.p = paramA.p;
      this.q = paramA.q;
      this.r = paramA.r;
      this.s = paramA.s;
      this.t = paramA.t;
      this.u = paramA.u;
      this.v = paramA.v;
      this.w = paramA.w;
      this.x = paramA.x;
      this.y = paramA.y;
      this.z = paramA.z;
      this.A = paramA.A;
      return;
    }
  }

  private SSLSocketFactory x()
  {
    monitorenter;
    try
    {
      SSLSocketFactory localSSLSocketFactory1 = c;
      if (localSSLSocketFactory1 == null);
      try
      {
        SSLContext localSSLContext = SSLContext.getInstance("TLS");
        localSSLContext.init(null, null, null);
        c = localSSLContext.getSocketFactory();
        SSLSocketFactory localSSLSocketFactory2 = c;
        monitorexit;
        return localSSLSocketFactory2;
      }
      catch (GeneralSecurityException localGeneralSecurityException)
      {
        throw new AssertionError();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final int a()
  {
    return this.y;
  }

  public final f a(C paramC)
  {
    return new f(this, paramC);
  }

  public final void a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (3000L < 0L)
      throw new IllegalArgumentException("timeout < 0");
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    long l1 = paramTimeUnit.toMillis(3000L);
    if (l1 > 2147483647L)
      throw new IllegalArgumentException("Timeout too large.");
    if ((l1 == 0L) && (3000L > 0L))
      throw new IllegalArgumentException("Timeout too small.");
    this.y = (int)l1;
  }

  public final int b()
  {
    return this.z;
  }

  public final void b(long paramLong, TimeUnit paramTimeUnit)
  {
    if (3000L < 0L)
      throw new IllegalArgumentException("timeout < 0");
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    long l1 = paramTimeUnit.toMillis(3000L);
    if (l1 > 2147483647L)
      throw new IllegalArgumentException("Timeout too large.");
    if ((l1 == 0L) && (3000L > 0L))
      throw new IllegalArgumentException("Timeout too small.");
    this.z = (int)l1;
  }

  public final int c()
  {
    return this.A;
  }

  public final Proxy d()
  {
    return this.f;
  }

  public final ProxySelector e()
  {
    return this.k;
  }

  public final CookieHandler f()
  {
    return this.l;
  }

  final K g()
  {
    return this.m;
  }

  public final SocketFactory h()
  {
    return this.o;
  }

  public final SSLSocketFactory i()
  {
    return this.p;
  }

  public final HostnameVerifier j()
  {
    return this.q;
  }

  public final j k()
  {
    return this.r;
  }

  public final b l()
  {
    return this.s;
  }

  public final n m()
  {
    return this.t;
  }

  public final boolean n()
  {
    return this.v;
  }

  public final boolean o()
  {
    return this.w;
  }

  public final boolean p()
  {
    return this.x;
  }

  final k q()
  {
    return this.d;
  }

  public final r r()
  {
    return this.e;
  }

  public final List<Protocol> s()
  {
    return this.g;
  }

  public final List<p> t()
  {
    return this.h;
  }

  public final List<K> u()
  {
    return this.i;
  }

  public final List<K> v()
  {
    return this.j;
  }

  final A w()
  {
    A localA = new A(this);
    if (localA.k == null)
      localA.k = ProxySelector.getDefault();
    if (localA.l == null)
      localA.l = CookieHandler.getDefault();
    if (localA.o == null)
      localA.o = SocketFactory.getDefault();
    if (localA.p == null)
      localA.p = x();
    if (localA.q == null)
      localA.q = com.squareup.okhttp.internal.a.b.a;
    if (localA.r == null)
      localA.r = j.a;
    if (localA.s == null)
      localA.s = a.a;
    if (localA.t == null)
      localA.t = n.a();
    if (localA.g == null)
      localA.g = a;
    if (localA.h == null)
      localA.h = b;
    if (localA.u == null)
      localA.u = d.a;
    return localA;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.A
 * JD-Core Version:    0.6.0
 */