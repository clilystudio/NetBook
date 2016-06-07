package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.net.Proxy;
import java.net.SecureCacheResponse;
import java.net.URL;
import javax.net.ssl.SSLSocket;

final class z extends HttpURLConnectionImpl
{
  private z(y paramy, URL paramURL, int paramInt)
  {
    super(paramURL, paramInt);
  }

  private z(y paramy, URL paramURL, int paramInt, Proxy paramProxy)
  {
    super(paramURL, paramInt, paramProxy);
  }

  protected final m a(String paramString, C paramC, h paramh, I paramI)
  {
    return new A(this, paramString, paramC, paramh, paramI, this.b, 0);
  }

  public final SecureCacheResponse f()
  {
    A localA = (A)this.a;
    if (localA != null)
      return (SecureCacheResponse)localA.k();
    return null;
  }

  public final SSLSocket g()
  {
    A localA = (A)this.a;
    if (localA != null)
      return A.a(localA);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.z
 * JD-Core Version:    0.6.0
 */