package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import javax.net.ssl.SSLSocketFactory;

public final class i
{
  private final Proxy a;
  private final boolean b;
  private final String c;
  private final int d;
  private final String e;
  private final int f;
  private final SSLSocketFactory g;

  public i(URI paramURI, SSLSocketFactory paramSSLSocketFactory)
  {
    this.a = null;
    this.b = false;
    this.c = paramURI.getHost();
    this.d = a.a(paramURI);
    this.g = paramSSLSocketFactory;
    this.e = this.c;
    this.f = this.d;
    if (this.c == null)
      throw new UnknownHostException(paramURI.toString());
  }

  public i(URI paramURI, SSLSocketFactory paramSSLSocketFactory, Proxy paramProxy, boolean paramBoolean)
  {
    this.a = paramProxy;
    this.b = paramBoolean;
    this.c = paramURI.getHost();
    this.d = a.a(paramURI);
    this.g = paramSSLSocketFactory;
    SocketAddress localSocketAddress = paramProxy.address();
    if (!(localSocketAddress instanceof InetSocketAddress))
      throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localSocketAddress.getClass());
    InetSocketAddress localInetSocketAddress = (InetSocketAddress)localSocketAddress;
    this.e = localInetSocketAddress.getHostName();
    this.f = localInetSocketAddress.getPort();
    if (this.c == null)
      throw new UnknownHostException(paramURI.toString());
  }

  public final Proxy a()
  {
    return this.a;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof i;
    int i = 0;
    if (bool1)
    {
      i locali = (i)paramObject;
      boolean bool2 = a.a(this.a, locali.a);
      i = 0;
      if (bool2)
      {
        boolean bool3 = this.c.equals(locali.c);
        i = 0;
        if (bool3)
        {
          int j = this.d;
          int k = locali.d;
          i = 0;
          if (j == k)
          {
            boolean bool4 = this.b;
            boolean bool5 = locali.b;
            i = 0;
            if (bool4 == bool5)
              i = 1;
          }
        }
      }
    }
    return i;
  }

  public final int hashCode()
  {
    int i = 31 * (31 * (527 + this.c.hashCode()) + this.d);
    int j;
    int k;
    if (this.g != null)
    {
      j = this.g.hashCode();
      k = 31 * (j + i);
      if (this.a == null)
        break label98;
    }
    label98: for (int m = this.a.hashCode(); ; m = 0)
    {
      int n = 31 * (m + k);
      boolean bool = this.b;
      int i1 = 0;
      if (bool)
        i1 = 1;
      return n + i1;
      j = 0;
      break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.i
 * JD-Core Version:    0.6.0
 */