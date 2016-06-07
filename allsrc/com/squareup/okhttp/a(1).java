package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class a
{
  final String a;
  final int b;
  final SSLSocketFactory c;
  final List<p> d;
  private Proxy e;
  private SocketFactory f;
  private HostnameVerifier g;
  private j h;
  private b i;
  private List<Protocol> j;
  private ProxySelector k;

  public a(String paramString, int paramInt, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, j paramj, b paramb, Proxy paramProxy, List<Protocol> paramList, List<p> paramList1, ProxySelector paramProxySelector)
  {
    if (paramString == null)
      throw new NullPointerException("uriHost == null");
    if (paramInt <= 0)
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    if (paramb == null)
      throw new IllegalArgumentException("authenticator == null");
    if (paramList == null)
      throw new IllegalArgumentException("protocols == null");
    if (paramProxySelector == null)
      throw new IllegalArgumentException("proxySelector == null");
    this.e = paramProxy;
    this.a = paramString;
    this.b = paramInt;
    this.f = paramSocketFactory;
    this.c = paramSSLSocketFactory;
    this.g = paramHostnameVerifier;
    this.h = paramj;
    this.i = paramb;
    this.j = l.a(paramList);
    this.d = l.a(paramList1);
    this.k = paramProxySelector;
  }

  public final String a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final SocketFactory c()
  {
    return this.f;
  }

  public final SSLSocketFactory d()
  {
    return this.c;
  }

  public final HostnameVerifier e()
  {
    return this.g;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof a;
    int m = 0;
    if (bool1)
    {
      a locala = (a)paramObject;
      boolean bool2 = l.a(this.e, locala.e);
      m = 0;
      if (bool2)
      {
        boolean bool3 = this.a.equals(locala.a);
        m = 0;
        if (bool3)
        {
          int n = this.b;
          int i1 = locala.b;
          m = 0;
          if (n == i1)
          {
            boolean bool4 = l.a(this.c, locala.c);
            m = 0;
            if (bool4)
            {
              boolean bool5 = l.a(this.g, locala.g);
              m = 0;
              if (bool5)
              {
                boolean bool6 = l.a(this.h, locala.h);
                m = 0;
                if (bool6)
                {
                  boolean bool7 = l.a(this.i, locala.i);
                  m = 0;
                  if (bool7)
                  {
                    boolean bool8 = l.a(this.j, locala.j);
                    m = 0;
                    if (bool8)
                    {
                      boolean bool9 = l.a(this.d, locala.d);
                      m = 0;
                      if (bool9)
                      {
                        boolean bool10 = l.a(this.k, locala.k);
                        m = 0;
                        if (bool10)
                          m = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return m;
  }

  public final b f()
  {
    return this.i;
  }

  public final List<Protocol> g()
  {
    return this.j;
  }

  public final Proxy h()
  {
    return this.e;
  }

  public final int hashCode()
  {
    int m;
    int i1;
    label58: int i2;
    if (this.e != null)
    {
      m = this.e.hashCode();
      int n = 31 * (31 * (31 * (m + 527) + this.a.hashCode()) + this.b);
      if (this.c == null)
        break label174;
      i1 = this.c.hashCode();
      i2 = 31 * (i1 + n);
      if (this.g == null)
        break label179;
    }
    label174: label179: for (int i3 = this.g.hashCode(); ; i3 = 0)
    {
      int i4 = 31 * (i3 + i2);
      j localj = this.h;
      int i5 = 0;
      if (localj != null)
        i5 = this.h.hashCode();
      return 31 * (31 * (31 * (31 * (i4 + i5) + this.i.hashCode()) + this.j.hashCode()) + this.d.hashCode()) + this.k.hashCode();
      m = 0;
      break;
      i1 = 0;
      break label58;
    }
  }

  public final ProxySelector i()
  {
    return this.k;
  }

  public final j j()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.a
 * JD-Core Version:    0.6.0
 */