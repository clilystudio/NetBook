package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;

public final class L
{
  final a a;
  final Proxy b;
  final InetSocketAddress c;

  public L(a parama, Proxy paramProxy, InetSocketAddress paramInetSocketAddress)
  {
    if (parama == null)
      throw new NullPointerException("address == null");
    if (paramProxy == null)
      throw new NullPointerException("proxy == null");
    if (paramInetSocketAddress == null)
      throw new NullPointerException("inetSocketAddress == null");
    this.a = parama;
    this.b = paramProxy;
    this.c = paramInetSocketAddress;
  }

  public final a a()
  {
    return this.a;
  }

  public final Proxy b()
  {
    return this.b;
  }

  public final InetSocketAddress c()
  {
    return this.c;
  }

  public final boolean d()
  {
    return (this.a.c != null) && (this.b.type() == Proxy.Type.HTTP);
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof L;
    int i = 0;
    if (bool1)
    {
      L localL = (L)paramObject;
      boolean bool2 = this.a.equals(localL.a);
      i = 0;
      if (bool2)
      {
        boolean bool3 = this.b.equals(localL.b);
        i = 0;
        if (bool3)
        {
          boolean bool4 = this.c.equals(localL.c);
          i = 0;
          if (bool4)
            i = 1;
        }
      }
    }
    return i;
  }

  public final int hashCode()
  {
    return 31 * (31 * (527 + this.a.hashCode()) + this.b.hashCode()) + this.c.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.L
 * JD-Core Version:    0.6.0
 */