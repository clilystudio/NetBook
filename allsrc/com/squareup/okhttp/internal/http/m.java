package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.squareup.okhttp.I;
import com.squareup.okhttp.J;
import com.squareup.okhttp.L;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.l;
import com.squareup.okhttp.j;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okio.x;

public final class m
{
  private static final com.squareup.okhttp.K b = new n();
  final com.squareup.okhttp.A a;
  private com.squareup.okhttp.m c;
  private com.squareup.okhttp.a d;
  private v e;
  private L f;
  private final I g;
  private A h;
  private long i = -1L;
  private boolean j;
  private boolean k;
  private final C l;
  private C m;
  private I n;
  private I o;
  private x p;
  private final boolean q;
  private final boolean r;
  private android.support.design.widget.K s;
  private b t;

  public m(com.squareup.okhttp.A paramA, C paramC, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, com.squareup.okhttp.m paramm, v paramv, u paramu, I paramI)
  {
    this.a = paramA;
    this.l = paramC;
    this.k = paramBoolean1;
    this.q = paramBoolean2;
    this.r = paramBoolean3;
    this.c = paramm;
    this.e = paramv;
    this.p = paramu;
    this.g = paramI;
    if (paramm != null)
    {
      com.squareup.okhttp.internal.b.b.b(paramm, this);
      this.f = paramm.b();
      return;
    }
    this.f = null;
  }

  private static com.squareup.okhttp.u a(com.squareup.okhttp.u paramu1, com.squareup.okhttp.u paramu2)
  {
    int i1 = 0;
    com.squareup.okhttp.v localv = new com.squareup.okhttp.v();
    int i2 = paramu1.a();
    for (int i3 = 0; i3 < i2; i3++)
    {
      String str2 = paramu1.a(i3);
      String str3 = paramu1.b(i3);
      if ((("Warning".equalsIgnoreCase(str2)) && (str3.startsWith("1"))) || ((r.a(str2)) && (paramu2.a(str2) != null)))
        continue;
      localv.a(str2, str3);
    }
    int i4 = paramu2.a();
    while (i1 < i4)
    {
      String str1 = paramu2.a(i1);
      if ((!"Content-Length".equalsIgnoreCase(str1)) && (r.a(str1)))
        localv.a(str1, paramu2.b(i1));
      i1++;
    }
    return localv.a();
  }

  public static String a(URL paramURL)
  {
    if (l.a(paramURL) != l.a(paramURL.getProtocol()))
      return paramURL.getHost() + ":" + paramURL.getPort();
    return paramURL.getHost();
  }

  private void a(v paramv, IOException paramIOException)
  {
    if (com.squareup.okhttp.internal.b.b.b(this.c) > 0)
      return;
    paramv.a(this.c.b(), paramIOException);
  }

  public static boolean a(I paramI)
  {
    if (paramI.a().d().equals("HEAD"));
    do
    {
      return false;
      int i1 = paramI.c();
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304))
        return true;
    }
    while ((r.a(paramI) == -1L) && (!"chunked".equalsIgnoreCase(paramI.b("Transfer-Encoding"))));
    return true;
  }

  private static I b(I paramI)
  {
    if ((paramI != null) && (paramI.g() != null))
      paramI = paramI.h().a(null).a();
    return paramI;
  }

  private I c(I paramI)
  {
    if ((!this.j) || (!"gzip".equalsIgnoreCase(this.o.b("Content-Encoding"))));
    do
      return paramI;
    while (paramI.g() == null);
    okio.m localm = new okio.m(paramI.g().d());
    com.squareup.okhttp.u localu = paramI.f().b().b("Content-Encoding").b("Content-Length").a();
    return paramI.h().a(localu).a(new t(localu, okio.o.a(localm))).a();
  }

  private com.squareup.okhttp.m k()
  {
    com.squareup.okhttp.n localn = this.a.m();
    while (true)
    {
      com.squareup.okhttp.m localm1 = localn.a(this.d);
      if (localm1 == null)
        break;
      if ((this.m.d().equals("GET")) || (com.squareup.okhttp.internal.b.b.c(localm1)))
        return localm1;
      l.a(localm1.c());
    }
    try
    {
      com.squareup.okhttp.m localm2 = new com.squareup.okhttp.m(localn, this.e.b());
      return localm2;
    }
    catch (IOException localIOException)
    {
    }
    throw new RouteException(localIOException);
  }

  private I l()
  {
    this.h.a();
    I localI = this.h.b().a(this.m).a(this.c.i()).a(r.a, Long.toString(this.i)).a(r.b, Long.toString(System.currentTimeMillis())).a();
    if (!this.r)
      localI = localI.h().a(this.h.a(localI)).a();
    com.squareup.okhttp.internal.b.b.a(this.c, localI.b());
    return localI;
  }

  public final m a(RouteException paramRouteException)
  {
    if ((this.e != null) && (this.c != null))
      a(this.e, paramRouteException.getLastConnectException());
    int i1;
    if (((this.e != null) || (this.c != null)) && ((this.e == null) || (this.e.a())))
    {
      boolean bool1 = this.a.p();
      i1 = 0;
      if (bool1)
        break label77;
    }
    while (i1 == 0)
    {
      return null;
      label77: IOException localIOException = paramRouteException.getLastConnectException();
      boolean bool2 = localIOException instanceof ProtocolException;
      i1 = 0;
      if (bool2)
        continue;
      boolean bool3 = localIOException instanceof InterruptedIOException;
      i1 = 0;
      if (bool3)
        continue;
      if ((localIOException instanceof SSLHandshakeException))
      {
        boolean bool5 = localIOException.getCause() instanceof CertificateException;
        i1 = 0;
        if (bool5)
          continue;
      }
      boolean bool4 = localIOException instanceof SSLPeerUnverifiedException;
      i1 = 0;
      if (bool4)
        continue;
      i1 = 1;
    }
    com.squareup.okhttp.m localm = h();
    return new m(this.a, this.l, this.k, this.q, this.r, localm, this.e, (u)this.p, this.g);
  }

  public final m a(IOException paramIOException, x paramx)
  {
    if ((this.e != null) && (this.c != null))
      a(this.e, paramIOException);
    int i1;
    if (((this.e != null) || (this.c != null)) && ((this.e == null) || (this.e.a())))
    {
      boolean bool1 = this.a.p();
      i1 = 0;
      if (bool1)
        break label76;
    }
    while (i1 == 0)
    {
      return null;
      label76: boolean bool2 = paramIOException instanceof ProtocolException;
      i1 = 0;
      if (bool2)
        continue;
      boolean bool3 = paramIOException instanceof InterruptedIOException;
      i1 = 0;
      if (bool3)
        continue;
      i1 = 1;
    }
    com.squareup.okhttp.m localm = h();
    return new m(this.a, this.l, this.k, this.q, this.r, localm, this.e, null, this.g);
  }

  public final void a()
  {
    if (this.t != null)
      return;
    if (this.h != null)
      throw new IllegalStateException();
    C localC1 = this.l;
    D localD = localC1.g();
    if (localC1.a("Host") == null)
      localD.a("Host", a(localC1.a()));
    if (((this.c == null) || (this.c.k() != Protocol.HTTP_1_0)) && (localC1.a("Connection") == null))
      localD.a("Connection", "Keep-Alive");
    if (localC1.a("Accept-Encoding") == null)
    {
      this.j = true;
      localD.a("Accept-Encoding", "gzip");
    }
    CookieHandler localCookieHandler = this.a.f();
    if (localCookieHandler != null)
    {
      Map localMap = r.a(localD.a().e(), null);
      r.a(localD, localCookieHandler.get(localC1.b(), localMap));
    }
    if (localC1.a("User-Agent") == null)
      localD.a("User-Agent", "okhttp/2.4.0");
    C localC2 = localD.a();
    android.support.design.widget.K localK = com.squareup.okhttp.internal.b.b.a(this.a);
    I localI;
    if (localK != null)
      localI = localK.k();
    com.squareup.okhttp.A localA;
    C localC3;
    String str;
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    while (true)
    {
      this.t = new c(System.currentTimeMillis(), localC2, localI).a();
      this.m = this.t.a;
      this.n = this.t.b;
      if ((localI != null) && (this.n == null))
        l.a(localI.g());
      if (this.m == null)
        break label688;
      if (this.c == null)
      {
        if (this.c != null)
        {
          throw new IllegalStateException();
          localI = null;
          continue;
        }
        if (this.e != null)
          break;
        localA = this.a;
        localC3 = this.m;
        str = localC3.a().getHost();
        if ((str == null) || (str.length() == 0))
          throw new RequestException(new UnknownHostException(localC3.a().toString()));
        if (!localC3.i())
          break label836;
        localSSLSocketFactory = localA.i();
        localHostnameVerifier = localA.j();
      }
    }
    for (j localj = localA.k(); ; localj = null)
    {
      long l1;
      while (true)
      {
        this.d = new com.squareup.okhttp.a(str, l.a(localC3.a()), localA.h(), localSSLSocketFactory, localHostnameVerifier, localj, localA.l(), localA.d(), localA.s(), localA.t(), localA.e());
        try
        {
          this.e = v.a(this.d, this.m, this.a);
          com.squareup.okhttp.m localm = k();
          com.squareup.okhttp.internal.b.b.a(this.a, localm, this, this.m);
          this.c = localm;
          this.f = this.c.b();
          this.h = com.squareup.okhttp.internal.b.b.a(this.c, this);
          if ((!this.q) || (!c()) || (this.p != null))
            break;
          l1 = r.a(localC2);
          if (!this.k)
            break label655;
          if (l1 > 2147483647L)
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
        }
        catch (IOException localIOException)
        {
          throw new RequestException(localIOException);
        }
      }
      if (l1 != -1L)
      {
        this.h.a(this.m);
        this.p = new u((int)l1);
        return;
      }
      this.p = new u();
      return;
      label655: this.h.a(this.m);
      this.p = this.h.a(this.m, l1);
      return;
      label688: if (this.c != null)
      {
        com.squareup.okhttp.internal.b.b.a(this.a.m(), this.c);
        this.c = null;
      }
      if (this.n != null);
      for (this.o = this.n.h().a(this.l).c(b(this.g)).b(b(this.n)).a(); ; this.o = new J().a(this.l).c(b(this.g)).a(Protocol.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(b).a())
      {
        this.o = c(this.o);
        return;
      }
      label836: localSSLSocketFactory = null;
      localHostnameVerifier = null;
    }
  }

  public final void a(com.squareup.okhttp.u paramu)
  {
    CookieHandler localCookieHandler = this.a.f();
    if (localCookieHandler != null)
      localCookieHandler.put(this.l.b(), r.a(paramu, null));
  }

  public final void b()
  {
    if (this.i != -1L)
      throw new IllegalStateException();
    this.i = System.currentTimeMillis();
  }

  public final boolean b(URL paramURL)
  {
    URL localURL = this.l.a();
    return (localURL.getHost().equals(paramURL.getHost())) && (l.a(localURL) == l.a(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }

  final boolean c()
  {
    return com.arcsoft.hpay100.a.a.q(this.l.d());
  }

  public final C d()
  {
    return this.l;
  }

  public final I e()
  {
    if (this.o == null)
      throw new IllegalStateException();
    return this.o;
  }

  public final com.squareup.okhttp.m f()
  {
    return this.c;
  }

  public final void g()
  {
    if ((this.h != null) && (this.c != null))
      this.h.c();
    this.c = null;
  }

  public final com.squareup.okhttp.m h()
  {
    if (this.p != null)
      l.a(this.p);
    if (this.o == null)
    {
      if (this.c != null)
        l.a(this.c.c());
      this.c = null;
      return null;
    }
    l.a(this.o.g());
    if ((this.h != null) && (this.c != null) && (!this.h.d()))
    {
      l.a(this.c.c());
      this.c = null;
      return null;
    }
    if ((this.c != null) && (!com.squareup.okhttp.internal.b.b.a(this.c)))
      this.c = null;
    com.squareup.okhttp.m localm = this.c;
    this.c = null;
    return localm;
  }

  public final void i()
  {
    int i1 = 1;
    if (this.o != null);
    label67: label370: 
    do
    {
      do
      {
        return;
        if ((this.m != null) || (this.n != null))
          continue;
        throw new IllegalStateException("call sendRequest() first!");
      }
      while (this.m == null);
      I localI1;
      I localI3;
      if (this.r)
      {
        this.h.a(this.m);
        localI1 = l();
        a(localI1.f());
        if (this.n == null)
          break label434;
        localI3 = this.n;
        if (localI1.c() != 304)
          break label370;
      }
      while (true)
      {
        if (i1 == 0)
          break label424;
        this.o = this.n.h().a(this.l).c(b(this.g)).a(a(this.n.f(), localI1.f())).b(b(this.n)).a(b(localI1)).a();
        localI1.g().close();
        g();
        com.squareup.okhttp.internal.b.b.a(this.a);
        b(this.o);
        this.o = c(this.o);
        return;
        if (!this.q)
        {
          localI1 = new p(this, 0, this.m).a(this.m);
          break label67;
        }
        if (this.i == -1L)
        {
          if ((r.a(this.m) == -1L) && ((this.p instanceof u)))
          {
            long l1 = ((u)this.p).b();
            this.m = this.m.g().a("Content-Length", Long.toString(l1)).a();
          }
          this.h.a(this.m);
        }
        if (this.p == null)
          break;
        this.p.close();
        if (!(this.p instanceof u))
          break;
        this.h.a((u)this.p);
        break;
        Date localDate1 = localI3.f().b("Last-Modified");
        if (localDate1 != null)
        {
          Date localDate2 = localI1.f().b("Last-Modified");
          if ((localDate2 != null) && (localDate2.getTime() < localDate1.getTime()))
            continue;
        }
        i1 = 0;
      }
      l.a(this.n.g());
      this.o = localI1.h().a(this.l).c(b(this.g)).b(b(this.n)).a(b(localI1)).a();
    }
    while (!a(this.o));
    label424: label434: android.support.design.widget.K localK1 = com.squareup.okhttp.internal.b.b.a(this.a);
    if (localK1 != null)
    {
      if (b.a(this.o, this.m))
        break label599;
      String str = this.m.d();
      if ((str.equals("POST")) || (str.equals("PATCH")) || (str.equals("PUT")) || (!str.equals("DELETE")));
    }
    android.support.design.widget.K localK2 = this.s;
    I localI2 = this.o;
    if (localK2 == null);
    while (true)
    {
      this.o = c(localI2);
      return;
      label599: b(this.o);
      this.s = localK1.l();
      break;
      x localx = localK2.m();
      if (localx == null)
        continue;
      o localo = new o(this, localI2.g().d(), localK2, okio.o.a(localx));
      localI2 = localI2.h().a(new t(localI2.f(), okio.o.a(localo))).a();
    }
  }

  public final C j()
  {
    if (this.o == null)
      throw new IllegalStateException();
    if (this.f != null);
    for (Proxy localProxy = this.f.b(); ; localProxy = this.a.d())
      switch (this.o.c())
      {
      default:
        return null;
      case 407:
      case 401:
      case 307:
      case 308:
      case 300:
      case 301:
      case 302:
      case 303:
      }
    if (localProxy.type() != Proxy.Type.HTTP)
      throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
    return r.a(this.a.l(), this.o, localProxy);
    if ((!this.l.d().equals("GET")) && (!this.l.d().equals("HEAD")))
      return null;
    if (!this.a.o())
      return null;
    String str = this.o.b("Location");
    if (str == null)
      return null;
    URL localURL = new URL(this.l.a(), str);
    if ((!localURL.getProtocol().equals("https")) && (!localURL.getProtocol().equals("http")))
      return null;
    if ((!localURL.getProtocol().equals(this.l.a().getProtocol())) && (!this.a.n()))
      return null;
    D localD = this.l.g();
    if (com.arcsoft.hpay100.a.a.q(this.l.d()))
    {
      localD.a("GET", null);
      localD.b("Transfer-Encoding");
      localD.b("Content-Length");
      localD.b("Content-Type");
    }
    if (!b(localURL))
      localD.b("Authorization");
    return localD.a(localURL).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.m
 * JD-Core Version:    0.6.0
 */