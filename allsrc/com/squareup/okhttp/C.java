package com.squareup.okhttp;

import java.io.IOException;
import java.net.URI;
import java.net.URL;

public final class C
{
  private final w a;
  private final String b;
  private final u c;
  private final E d;
  private final Object e;
  private volatile URL f;
  private volatile URI g;
  private volatile d h;

  private C(D paramD)
  {
    this.a = D.a(paramD);
    this.b = D.b(paramD);
    this.c = D.c(paramD).a();
    this.d = D.d(paramD);
    if (D.e(paramD) != null);
    for (Object localObject = D.e(paramD); ; localObject = this)
    {
      this.e = localObject;
      return;
    }
  }

  public final String a(String paramString)
  {
    return this.c.a(paramString);
  }

  public final URL a()
  {
    URL localURL1 = this.f;
    if (localURL1 != null)
      return localURL1;
    URL localURL2 = this.a.a();
    this.f = localURL2;
    return localURL2;
  }

  public final URI b()
  {
    try
    {
      URI localURI1 = this.g;
      if (localURI1 != null)
        return localURI1;
      URI localURI2 = this.a.b();
      this.g = localURI2;
      return localURI2;
    }
    catch (IllegalStateException localIllegalStateException)
    {
    }
    throw new IOException(localIllegalStateException.getMessage());
  }

  public final String c()
  {
    return this.a.toString();
  }

  public final String d()
  {
    return this.b;
  }

  public final u e()
  {
    return this.c;
  }

  public final E f()
  {
    return this.d;
  }

  public final D g()
  {
    return new D(this, 0);
  }

  public final d h()
  {
    d locald1 = this.h;
    if (locald1 != null)
      return locald1;
    d locald2 = d.a(this.c);
    this.h = locald2;
    return locald2;
  }

  public final boolean i()
  {
    return this.a.c();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{method=").append(this.b).append(", url=").append(this.a).append(", tag=");
    if (this.e != this);
    for (Object localObject = this.e; ; localObject = null)
      return localObject + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.C
 * JD-Core Version:    0.6.0
 */