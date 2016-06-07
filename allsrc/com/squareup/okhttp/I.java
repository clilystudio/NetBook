package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.r;
import java.util.Collections;
import java.util.List;

public final class I
{
  private final C a;
  private final Protocol b;
  private final int c;
  private final String d;
  private final t e;
  private final u f;
  private final K g;
  private I h;
  private I i;
  private final I j;
  private volatile d k;

  private I(J paramJ)
  {
    this.a = J.a(paramJ);
    this.b = J.b(paramJ);
    this.c = J.c(paramJ);
    this.d = J.d(paramJ);
    this.e = J.e(paramJ);
    this.f = J.f(paramJ).a();
    this.g = J.g(paramJ);
    this.h = J.h(paramJ);
    this.i = J.i(paramJ);
    this.j = J.j(paramJ);
  }

  public final C a()
  {
    return this.a;
  }

  public final List<String> a(String paramString)
  {
    return this.f.c(paramString);
  }

  public final Protocol b()
  {
    return this.b;
  }

  public final String b(String paramString)
  {
    String str = this.f.a(paramString);
    if (str != null)
      return str;
    return null;
  }

  public final int c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public final t e()
  {
    return this.e;
  }

  public final u f()
  {
    return this.f;
  }

  public final K g()
  {
    return this.g;
  }

  public final J h()
  {
    return new J(this, 0);
  }

  public final List<l> i()
  {
    if (this.c == 401);
    for (String str = "WWW-Authenticate"; ; str = "Proxy-Authenticate")
    {
      return r.b(this.f, str);
      if (this.c != 407)
        break;
    }
    return Collections.emptyList();
  }

  public final d j()
  {
    d locald1 = this.k;
    if (locald1 != null)
      return locald1;
    d locald2 = d.a(this.f);
    this.k = locald2;
    return locald2;
  }

  public final String toString()
  {
    return "Response{protocol=" + this.b + ", code=" + this.c + ", message=" + this.d + ", url=" + this.a.c() + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.I
 * JD-Core Version:    0.6.0
 */