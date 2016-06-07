package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.c;
import com.integralblue.httpresponsecache.compat.java.net.ResponseSource;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Date;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.SSLSocketFactory;

public class m
{
  private static final CacheResponse c = new n();
  protected final HttpURLConnectionImpl a;
  protected h b;
  private String d;
  private ResponseSource e;
  private InputStream f;
  private OutputStream g;
  private OutputStream h;
  private b i;
  private InputStream j;
  private final ResponseCache k = ResponseCache.getDefault();
  private CacheResponse l;
  private CacheRequest m;
  private long n = -1L;
  private boolean o;
  private boolean p;
  private int q = 1;
  private final URI r;
  private final E s;
  private G t;
  private G u;
  private InputStream v;
  private boolean w;
  private boolean x;

  public m(HttpURLConnectionImpl paramHttpURLConnectionImpl, String paramString, C paramC, h paramh, I paramI)
  {
    this.a = paramHttpURLConnectionImpl;
    this.d = paramString;
    this.b = paramh;
    this.i = paramI;
    try
    {
      this.r = com.arcsoft.hpay100.a.a.b(paramHttpURLConnectionImpl.getURL());
      this.s = new E(this.r, new C(paramC));
      return;
    }
    catch (URISyntaxException localURISyntaxException)
    {
    }
    throw new IOException(localURISyntaxException.toString());
  }

  private void a(int paramInt)
  {
    if (this.n != -1L)
      throw new IllegalStateException();
    byte[] arrayOfByte = c.a(r().f(), com.integralblue.httpresponsecache.compat.a.c);
    if ((paramInt != -1) && (paramInt + arrayOfByte.length <= 32768))
      this.h = new BufferedOutputStream(this.g, paramInt + arrayOfByte.length);
    this.n = System.currentTimeMillis();
    this.h.write(arrayOfByte);
  }

  private void a(C paramC)
  {
    while (true)
    {
      String str = com.integralblue.httpresponsecache.compat.libcore.a.b.c(this.f);
      if (c.a(str))
        break;
      paramC.b(str);
    }
    CookieHandler localCookieHandler = CookieHandler.getDefault();
    if (localCookieHandler != null)
      localCookieHandler.put(this.r, paramC.g());
  }

  private void a(G paramG, InputStream paramInputStream)
  {
    if (this.j != null)
      throw new IllegalStateException();
    this.t = paramG;
    this.q = this.t.e().b();
    if (paramInputStream != null)
      a(paramInputStream);
  }

  private void a(InputStream paramInputStream)
  {
    this.t.e().d("Content-Encoding");
    if ((this.o) && (this.t.a()))
    {
      this.t.b();
      this.j = new GZIPInputStream(paramInputStream);
      return;
    }
    this.j = paramInputStream;
  }

  protected static String u()
  {
    String str = System.getProperty("http.agent");
    if (str != null)
      return str;
    return "Java" + System.getProperty("java.version");
  }

  private boolean x()
  {
    return (this.d == "POST") || (this.d == "PUT");
  }

  private void y()
  {
    C localC;
    do
    {
      localC = new C();
      localC.a(com.integralblue.httpresponsecache.compat.libcore.a.b.c(this.f));
      a(localC);
    }
    while (localC.c() == 100);
    a(new G(this.r, localC), null);
  }

  private String z()
  {
    String str1;
    StringBuilder localStringBuilder;
    URL localURL;
    String str2;
    if (this.q == 0)
    {
      str1 = "HTTP/1.0";
      localStringBuilder = new StringBuilder().append(this.d).append(" ");
      localURL = this.a.getURL();
      if (!s())
        break label76;
      str2 = localURL.toString();
    }
    while (true)
    {
      return str2 + " " + str1;
      str1 = "HTTP/1.1";
      break;
      label76: str2 = localURL.getFile();
      if (str2 == null)
      {
        str2 = "/";
        continue;
      }
      if (str2.startsWith("/"))
        continue;
      str2 = "/" + str2;
    }
  }

  protected final String a(URL paramURL)
  {
    int i1 = paramURL.getPort();
    String str = paramURL.getHost();
    if ((i1 > 0) && (i1 != this.a.b()))
      str = str + ":" + i1;
    return str;
  }

  public final URI a()
  {
    return this.r;
  }

  public final void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    if (this.j == this.v)
      com.arcsoft.hpay100.a.a.b(this.j);
    if ((!this.x) && (this.b != null))
    {
      this.x = bool1;
      if ((this.i != null) && (!this.i.a))
        paramBoolean = false;
      if (((this.t == null) || (!this.t.d())) && (!this.s.b()))
        break label142;
      if (bool1)
        paramBoolean = false;
      if (!(this.j instanceof J))
        break label184;
    }
    label142: label184: for (boolean bool2 = false; ; bool2 = paramBoolean)
    {
      if ((bool2) && (this.j != null));
      while (true)
      {
        try
        {
          com.integralblue.httpresponsecache.compat.libcore.a.b.b(this.j);
          bool3 = bool2;
          if (bool3)
            continue;
          this.b.a();
          this.b = null;
          return;
          bool1 = false;
          break;
          if (!this.w)
            continue;
          j.a.a(this.b);
          this.b = null;
          return;
        }
        catch (IOException localIOException)
        {
          bool3 = false;
          continue;
        }
        boolean bool3 = bool2;
      }
    }
  }

  protected boolean a(CacheResponse paramCacheResponse)
  {
    return true;
  }

  public final void b()
  {
    if (this.e != null);
    label858: 
    do
      while (true)
      {
        return;
        this.s.c().a(z());
        if (this.s.k() == null)
          this.s.a(u());
        if (this.s.l() == null)
          this.s.b(a(this.a.getURL()));
        String str = System.getProperty("http.keepAlive");
        if ((this.q > 0) && (this.s.m() == null) && ((str == null) || (Boolean.parseBoolean(str))))
          this.s.c("Keep-Alive");
        if (this.s.n() == null)
        {
          this.o = true;
          this.s.d("gzip");
        }
        if ((x()) && (this.s.o() == null))
          this.s.e("application/x-www-form-urlencoded");
        long l1 = this.a.getIfModifiedSince();
        if (l1 != 0L)
          this.s.a(new Date(l1));
        CookieHandler localCookieHandler = CookieHandler.getDefault();
        if (localCookieHandler != null)
          this.s.a(localCookieHandler.get(this.r, this.s.c().g()));
        this.e = ResponseSource.NETWORK;
        if ((!this.a.getUseCaches()) || (this.k == null));
        while (true)
        {
          if ((this.k instanceof com.integralblue.httpresponsecache.compat.java.net.a))
            ((com.integralblue.httpresponsecache.compat.java.net.a)this.k).a(this.e);
          if ((this.s.h()) && (this.e.requiresConnection()))
          {
            if (this.e == ResponseSource.CONDITIONAL_CACHE)
              com.arcsoft.hpay100.a.a.b(this.v);
            this.e = ResponseSource.CACHE;
            this.l = c;
            C localC1 = C.a(this.l.getHeaders());
            a(new G(this.r, localC1), this.l.getBody());
          }
          if (!this.e.requiresConnection())
            break label858;
          if (this.b == null)
            c();
          if ((this.g == null) && (this.h == null) && (this.f == null))
            break;
          throw new IllegalStateException();
          CacheResponse localCacheResponse = this.k.get(this.r, this.d, this.s.c().g());
          if (localCacheResponse == null)
            continue;
          Map localMap = localCacheResponse.getHeaders();
          this.v = localCacheResponse.getBody();
          if ((!a(localCacheResponse)) || (localMap == null) || (this.v == null))
          {
            com.arcsoft.hpay100.a.a.b(this.v);
            continue;
          }
          C localC2 = C.a(localMap);
          this.u = new G(this.r, localC2);
          long l2 = System.currentTimeMillis();
          this.e = this.u.a(l2, this.s);
          if (this.e == ResponseSource.CACHE)
          {
            this.l = localCacheResponse;
            a(this.u, this.v);
            continue;
          }
          if (this.e == ResponseSource.CONDITIONAL_CACHE)
          {
            this.l = localCacheResponse;
            continue;
          }
          if (this.e == ResponseSource.NETWORK)
          {
            com.arcsoft.hpay100.a.a.b(this.v);
            continue;
          }
          throw new AssertionError();
        }
        this.g = this.b.b();
        this.h = this.g;
        this.f = this.b.c();
        if (!x())
          continue;
        int i1 = this.a.d();
        if ((i1 > 0) || (this.s.a()))
        {
          this.p = true;
          if (i1 == -1)
            i1 = 1024;
        }
        if (this.g == null)
          throw new IllegalStateException("No socket to write to; was a POST cached?");
        if (this.q == 0)
          this.p = false;
        int i2 = this.a.c();
        if (this.i != null)
          continue;
        if (i2 != -1)
        {
          a(i2);
          this.i = new g(this.h, i2);
          return;
        }
        if (this.p)
        {
          a(-1);
          this.i = new e(this.h, i1);
          return;
        }
        if (this.s.j() != -1)
        {
          a(this.s.j());
          this.i = new I(this.s.j());
          return;
        }
        this.i = new I();
        return;
      }
    while (this.b == null);
    j.a.a(this.b);
    this.b = null;
  }

  protected void c()
  {
    if (this.b == null)
      this.b = d();
  }

  protected final h d()
  {
    h localh = h.a(this.r, t(), this.a.e(), v(), this.a.getConnectTimeout());
    Proxy localProxy = localh.d().a();
    if (localProxy != null)
      this.a.a(localProxy);
    localh.a(this.a.getReadTimeout());
    return localh;
  }

  public final OutputStream e()
  {
    if (this.e == null)
      throw new IllegalStateException();
    return this.i;
  }

  public final boolean f()
  {
    return this.t != null;
  }

  public final E g()
  {
    return this.s;
  }

  public final G h()
  {
    if (this.t == null)
      throw new IllegalStateException();
    return this.t;
  }

  public final int i()
  {
    if (this.t == null)
      throw new IllegalStateException();
    return this.t.e().c();
  }

  public final InputStream j()
  {
    if (this.t == null)
      throw new IllegalStateException();
    return this.j;
  }

  public final CacheResponse k()
  {
    return this.l;
  }

  public final h l()
  {
    return this.b;
  }

  public final boolean m()
  {
    return (this.b != null) && (this.b.f());
  }

  protected HttpURLConnection n()
  {
    return this.a;
  }

  public final void o()
  {
    this.w = true;
    if ((this.b != null) && (this.x))
    {
      j.a.a(this.b);
      this.b = null;
    }
  }

  public final boolean p()
  {
    int i1 = this.t.e().c();
    if (this.d == "HEAD");
    do
    {
      return false;
      if ((this.d != "CONNECT") && ((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304))
        return true;
    }
    while ((this.t.g() == -1) && (!this.t.c()));
    return true;
  }

  final void q()
  {
    a(this.t.e());
  }

  protected C r()
  {
    this.s.c().a(z());
    int i1 = this.a.c();
    if (i1 != -1)
      this.s.a(i1);
    while (true)
    {
      return this.s.c();
      if (this.p)
      {
        this.s.q();
        continue;
      }
      if (!(this.i instanceof I))
        continue;
      int i2 = ((I)this.i).b();
      this.s.a(i2);
    }
  }

  protected boolean s()
  {
    return this.a.usingProxy();
  }

  protected SSLSocketFactory t()
  {
    return null;
  }

  protected boolean v()
  {
    return false;
  }

  public final void w()
  {
    if (f());
    do
    {
      return;
      if (this.e != null)
        continue;
      throw new IllegalStateException("readResponse() without sendRequest()");
    }
    while (!this.e.requiresConnection());
    if (this.n == -1L)
      if (!(this.i instanceof I))
        break label231;
    label231: for (int i1 = ((I)this.i).b(); ; i1 = -1)
    {
      a(i1);
      if (this.i != null)
      {
        this.i.close();
        if ((this.i instanceof I))
          ((I)this.i).a(this.h);
      }
      this.h.flush();
      this.h = this.g;
      y();
      this.t.a(this.n, System.currentTimeMillis());
      if (this.e != ResponseSource.CONDITIONAL_CACHE)
        break label243;
      if (!this.u.a(this.t))
        break label236;
      a(true);
      a(this.u.b(this.t), this.v);
      if (!(this.k instanceof com.integralblue.httpresponsecache.compat.java.net.a))
        break;
      com.integralblue.httpresponsecache.compat.java.net.a locala = (com.integralblue.httpresponsecache.compat.java.net.a)this.k;
      locala.a();
      locala.a(this.l, n());
      return;
    }
    label236: com.arcsoft.hpay100.a.a.b(this.v);
    label243: Object localObject;
    if ((!p()) || (this.d == "CONNECT") || (!this.a.getUseCaches()) || (this.k == null))
    {
      if (p())
        break label344;
      localObject = new f(this.f, this.m, this, 0);
    }
    while (true)
    {
      a((InputStream)localObject);
      return;
      if (!this.t.a(this.s))
        break;
      this.m = this.k.put(this.r, n());
      break;
      label344: if (this.t.c())
      {
        localObject = new d(this.f, this.m, this);
        continue;
      }
      if (this.t.g() != -1)
      {
        localObject = new f(this.f, this.m, this, this.t.g());
        continue;
      }
      localObject = new J(this.f, this.m, this);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.m
 * JD-Core Version:    0.6.0
 */