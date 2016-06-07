package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.A;
import com.squareup.okhttp.C;
import com.squareup.okhttp.L;
import com.squareup.okhttp.a;
import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.internal.d;
import com.squareup.okhttp.internal.k;
import com.squareup.okhttp.internal.l;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

public final class v
{
  private final a a;
  private final URI b;
  private final d c;
  private final A d;
  private final k e;
  private Proxy f;
  private InetSocketAddress g;
  private List<Proxy> h = Collections.emptyList();
  private int i;
  private List<InetSocketAddress> j = Collections.emptyList();
  private int k;
  private final List<L> l = new ArrayList();

  private v(a parama, URI paramURI, A paramA)
  {
    this.a = parama;
    this.b = paramURI;
    this.d = paramA;
    this.e = b.b.b(paramA);
    this.c = b.b.c(paramA);
    Proxy localProxy = parama.h();
    if (localProxy != null)
      this.h = Collections.singletonList(localProxy);
    while (true)
    {
      this.i = 0;
      return;
      this.h = new ArrayList();
      List localList = this.d.e().select(paramURI);
      if (localList != null)
        this.h.addAll(localList);
      this.h.removeAll(Collections.singleton(Proxy.NO_PROXY));
      this.h.add(Proxy.NO_PROXY);
    }
  }

  public static v a(a parama, C paramC, A paramA)
  {
    return new v(parama, paramC.b(), paramA);
  }

  private void a(Proxy paramProxy)
  {
    this.j = new ArrayList();
    Object localObject;
    int n;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS))
    {
      String str1 = this.a.a();
      int m = l.a(this.b);
      localObject = str1;
      n = m;
      if ((n <= 0) || (n > 65535))
        throw new SocketException("No route to " + (String)localObject + ":" + n + "; port is out of range");
    }
    else
    {
      SocketAddress localSocketAddress = paramProxy.address();
      if (!(localSocketAddress instanceof InetSocketAddress))
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localSocketAddress.getClass());
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)localSocketAddress;
      InetAddress localInetAddress2 = localInetSocketAddress.getAddress();
      if (localInetAddress2 == null);
      for (String str2 = localInetSocketAddress.getHostName(); ; str2 = localInetAddress2.getHostAddress())
      {
        int i3 = localInetSocketAddress.getPort();
        localObject = str2;
        n = i3;
        break;
      }
    }
    for (InetAddress localInetAddress1 : this.c.a((String)localObject))
      this.j.add(new InetSocketAddress(localInetAddress1, n));
    this.k = 0;
  }

  private boolean c()
  {
    return this.i < this.h.size();
  }

  private boolean d()
  {
    return this.k < this.j.size();
  }

  private boolean e()
  {
    return !this.l.isEmpty();
  }

  public final void a(L paramL, IOException paramIOException)
  {
    if ((paramL.b().type() != Proxy.Type.DIRECT) && (this.a.i() != null))
      this.a.i().connectFailed(this.b, paramL.b().address(), paramIOException);
    this.e.a(paramL);
  }

  public final boolean a()
  {
    return (d()) || (c()) || (e());
  }

  public final L b()
  {
    while (true)
    {
      L localL;
      if (!d())
        if (!c())
        {
          if (!e())
            throw new NoSuchElementException();
          localL = (L)this.l.remove(0);
        }
      do
      {
        return localL;
        if (!c())
          throw new SocketException("No route to " + this.a.a() + "; exhausted proxy configurations: " + this.h);
        List localList2 = this.h;
        int n = this.i;
        this.i = (n + 1);
        Proxy localProxy = (Proxy)localList2.get(n);
        a(localProxy);
        this.f = localProxy;
        if (!d())
          throw new SocketException("No route to " + this.a.a() + "; exhausted inet socket addresses: " + this.j);
        List localList1 = this.j;
        int m = this.k;
        this.k = (m + 1);
        this.g = ((InetSocketAddress)localList1.get(m));
        localL = new L(this.a, this.f, this.g);
      }
      while (!this.e.c(localL));
      this.l.add(localL);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.v
 * JD-Core Version:    0.6.0
 */