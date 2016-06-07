package com.squareup.okhttp;

import com.arcsoft.hpay100.a.a;
import java.net.URL;

public final class D
{
  private w a;
  private String b;
  private v c;
  private E d;
  private Object e;

  public D()
  {
    this.b = "GET";
    this.c = new v();
  }

  private D(C paramC)
  {
    this.a = C.a(paramC);
    this.b = C.b(paramC);
    this.d = C.c(paramC);
    this.e = C.d(paramC);
    this.c = C.e(paramC).b();
  }

  private D a(w paramw)
  {
    if (paramw == null)
      throw new IllegalArgumentException("url == null");
    this.a = paramw;
    return this;
  }

  public final C a()
  {
    if (this.a == null)
      throw new IllegalStateException("url == null");
    return new C(this, 0);
  }

  public final D a(E paramE)
  {
    return a("POST", paramE);
  }

  public final D a(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("url == null");
    if (paramString.regionMatches(true, 0, "ws:", 0, 3))
      paramString = "http:" + paramString.substring(3);
    w localw;
    while (true)
    {
      localw = w.c(paramString);
      if (localw != null)
        break;
      throw new IllegalArgumentException("unexpected url: " + paramString);
      if (!paramString.regionMatches(true, 0, "wss:", 0, 4))
        continue;
      paramString = "https:" + paramString.substring(4);
    }
    return a(localw);
  }

  public final D a(String paramString, E paramE)
  {
    if (paramString.length() == 0)
      throw new IllegalArgumentException("method == null || method.length() == 0");
    if ((paramE != null) && (!a.q(paramString)))
      throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
    if ((paramE == null) && (a.p(paramString)))
      throw new IllegalArgumentException("method " + paramString + " must have a request body.");
    this.b = paramString;
    this.d = paramE;
    return this;
  }

  public final D a(String paramString1, String paramString2)
  {
    this.c.b(paramString1, paramString2);
    return this;
  }

  public final D a(URL paramURL)
  {
    w localw = w.a(paramURL);
    if (localw == null)
      throw new IllegalArgumentException("unexpected url: " + paramURL);
    return a(localw);
  }

  public final D b(String paramString)
  {
    this.c.b(paramString);
    return this;
  }

  public final D b(String paramString1, String paramString2)
  {
    this.c.a(paramString1, paramString2);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.D
 * JD-Core Version:    0.6.0
 */