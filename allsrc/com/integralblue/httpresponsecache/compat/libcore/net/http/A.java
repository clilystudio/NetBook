package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.IOException;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.SecureCacheResponse;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

final class A extends m
{
  private SSLSocket c;
  private final y d;

  private A(HttpURLConnectionImpl paramHttpURLConnectionImpl, String paramString, C paramC, h paramh, I paramI, y paramy)
  {
    super(paramHttpURLConnectionImpl, paramString, paramC, paramh, paramI);
    if (paramh != null);
    for (SSLSocket localSSLSocket = paramh.e(); ; localSSLSocket = null)
    {
      this.c = localSSLSocket;
      this.d = paramy;
      return;
    }
  }

  private boolean b(boolean paramBoolean)
  {
    HttpURLConnectionImpl localHttpURLConnectionImpl;
    h localh;
    if (this.b == null)
    {
      this.b = d();
      if (this.b.d().a() != null)
      {
        localHttpURLConnectionImpl = this.a;
        localh = this.b;
      }
    }
    C localC;
    for (Object localObject = g().c(); ; localObject = localC)
    {
      B localB = new B(localHttpURLConnectionImpl, (C)localObject, localh);
      localB.b();
      localB.w();
      int i = localB.i();
      switch (localB.i())
      {
      default:
        throw new IOException("Unexpected response code for CONNECT: " + i);
      case 407:
        localC = new C((C)localObject);
        if (localHttpURLConnectionImpl.a(407, localB.h(), localC))
          continue;
        throw new IOException("Failed to authenticate with proxy");
      case 200:
        this.c = this.b.e();
        if (this.c != null)
          return true;
        this.b.a(this.d.getSSLSocketFactory(), paramBoolean);
        return false;
      }
    }
  }

  protected final boolean a(CacheResponse paramCacheResponse)
  {
    return paramCacheResponse instanceof SecureCacheResponse;
  }

  protected final void c()
  {
    try
    {
      boolean bool2 = b(true);
      bool1 = bool2;
      if (!bool1)
        this.c = this.b.a(this.d.getHostnameVerifier());
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        if (((localIOException instanceof SSLHandshakeException)) && ((localIOException.getCause() instanceof CertificateException)))
          throw localIOException;
        a(false);
        boolean bool1 = b(false);
      }
    }
  }

  protected final HttpURLConnection n()
  {
    return this.d;
  }

  protected final boolean s()
  {
    return false;
  }

  protected final SSLSocketFactory t()
  {
    return this.d.getSSLSocketFactory();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.A
 * JD-Core Version:    0.6.0
 */