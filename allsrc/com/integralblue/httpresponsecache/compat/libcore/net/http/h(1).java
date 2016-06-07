package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

class h
{
  private final i a;
  private final Socket b;
  private InputStream c;
  private OutputStream d;
  private SSLSocket e;
  private SSLSocket f;
  private InputStream g;
  private OutputStream h;
  private boolean i = false;

  private h(i parami, int paramInt)
  {
    this.a = parami;
    Socket localSocket = null;
    InetAddress[] arrayOfInetAddress = InetAddress.getAllByName(i.a(parami));
    while (true)
    {
      if (j < arrayOfInetAddress.length)
      {
        if ((i.b(parami) == null) || (i.b(parami).type() == Proxy.Type.HTTP))
          break label96;
        localSocket = new Socket(i.b(parami));
      }
      try
      {
        while (true)
        {
          localSocket.connect(new InetSocketAddress(arrayOfInetAddress[j], i.c(parami)), paramInt);
          this.b = localSocket;
          return;
          label96: localSocket = new Socket();
        }
      }
      catch (IOException localIOException)
      {
        if (j == -1 + arrayOfInetAddress.length)
          throw localIOException;
        j++;
      }
    }
  }

  public static h a(URI paramURI, SSLSocketFactory paramSSLSocketFactory, Proxy paramProxy, boolean paramBoolean, int paramInt)
  {
    if (paramProxy != null)
    {
      if (paramProxy.type() == Proxy.Type.DIRECT);
      for (i locali2 = new i(paramURI, paramSSLSocketFactory); ; locali2 = new i(paramURI, paramSSLSocketFactory, paramProxy, paramBoolean))
        return j.a.a(locali2, paramInt);
    }
    ProxySelector localProxySelector = ProxySelector.getDefault();
    List localList = localProxySelector.select(paramURI);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        Proxy localProxy = (Proxy)localIterator.next();
        if (localProxy.type() == Proxy.Type.DIRECT)
          continue;
        try
        {
          i locali1 = new i(paramURI, paramSSLSocketFactory, localProxy, paramBoolean);
          h localh = j.a.a(locali1, paramInt);
          return localh;
        }
        catch (IOException localIOException)
        {
          localProxySelector.connectFailed(paramURI, localProxy.address(), localIOException);
        }
      }
    }
    return j.a.a(new i(paramURI, paramSSLSocketFactory), paramInt);
  }

  public final SSLSocket a(HostnameVerifier paramHostnameVerifier)
  {
    if (!paramHostnameVerifier.verify(i.e(this.a), this.e.getSession()))
      throw new IOException("Hostname '" + i.e(this.a) + "' was not verified");
    this.f = this.e;
    return this.f;
  }

  public final void a()
  {
    a.b(this.h);
    a.b(this.g);
    a.a(this.f);
    a.b(this.d);
    a.b(this.c);
    a.a(this.b);
  }

  public final void a(int paramInt)
  {
    this.b.setSoTimeout(paramInt);
  }

  public final void a(SSLSocketFactory paramSSLSocketFactory, boolean paramBoolean)
  {
    this.e = ((SSLSocket)paramSSLSocketFactory.createSocket(this.b, i.e(this.a), i.f(this.a), true));
    if (paramBoolean);
    try
    {
      Class localClass = this.e.getClass();
      localClass.getMethod("setEnabledCompressionMethods", new Class[] { [Ljava.lang.String.class }).invoke(this.e, new Object[] { { "ZLIB" } });
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod1 = localClass.getMethod("setUseSessionTickets", arrayOfClass);
      SSLSocket localSSLSocket1 = this.e;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Boolean.valueOf(true);
      localMethod1.invoke(localSSLSocket1, arrayOfObject1);
      Method localMethod2 = localClass.getMethod("setHostname", new Class[] { String.class });
      SSLSocket localSSLSocket2 = this.e;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = i.a(this.a);
      localMethod2.invoke(localSSLSocket2, arrayOfObject2);
      while (true)
      {
        label188: this.e.startHandshake();
        return;
        this.e.setEnabledProtocols(new String[] { "SSLv3" });
      }
    }
    catch (Exception localException)
    {
      break label188;
    }
  }

  public final OutputStream b()
  {
    if (this.f != null)
    {
      if (this.h == null)
        this.h = this.f.getOutputStream();
      return this.h;
    }
    if (this.d == null)
      this.d = this.b.getOutputStream();
    return this.d;
  }

  public final InputStream c()
  {
    if (this.f != null)
    {
      if (this.g == null)
        this.g = this.f.getInputStream();
      return this.g;
    }
    if (this.c == null)
      if (!i.d(this.a))
        break label65;
    label65: for (Object localObject = this.b.getInputStream(); ; localObject = new BufferedInputStream(this.b.getInputStream(), 128))
    {
      this.c = ((InputStream)localObject);
      return this.c;
    }
  }

  public final i d()
  {
    return this.a;
  }

  public final SSLSocket e()
  {
    return this.f;
  }

  public final boolean f()
  {
    return this.i;
  }

  public final void g()
  {
    this.i = true;
  }

  protected final boolean h()
  {
    return (!this.b.isClosed()) && (!this.b.isInputShutdown()) && (!this.b.isOutputShutdown());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.h
 * JD-Core Version:    0.6.0
 */