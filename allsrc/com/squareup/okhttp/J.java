package com.squareup.okhttp;

public final class J
{
  private C a;
  private Protocol b;
  private int c = -1;
  private String d;
  private t e;
  private v f;
  private K g;
  private I h;
  private I i;
  private I j;

  public J()
  {
    this.f = new v();
  }

  private J(I paramI)
  {
    this.a = I.a(paramI);
    this.b = I.b(paramI);
    this.c = I.c(paramI);
    this.d = I.d(paramI);
    this.e = I.e(paramI);
    this.f = I.f(paramI).b();
    this.g = I.g(paramI);
    this.h = I.h(paramI);
    this.i = I.i(paramI);
    this.j = I.j(paramI);
  }

  private static void a(String paramString, I paramI)
  {
    if (I.g(paramI) != null)
      throw new IllegalArgumentException(paramString + ".body != null");
    if (I.h(paramI) != null)
      throw new IllegalArgumentException(paramString + ".networkResponse != null");
    if (I.i(paramI) != null)
      throw new IllegalArgumentException(paramString + ".cacheResponse != null");
    if (I.j(paramI) != null)
      throw new IllegalArgumentException(paramString + ".priorResponse != null");
  }

  public final I a()
  {
    if (this.a == null)
      throw new IllegalStateException("request == null");
    if (this.b == null)
      throw new IllegalStateException("protocol == null");
    if (this.c < 0)
      throw new IllegalStateException("code < 0: " + this.c);
    return new I(this, 0);
  }

  public final J a(int paramInt)
  {
    this.c = paramInt;
    return this;
  }

  public final J a(C paramC)
  {
    this.a = paramC;
    return this;
  }

  public final J a(I paramI)
  {
    if (paramI != null)
      a("networkResponse", paramI);
    this.h = paramI;
    return this;
  }

  public final J a(K paramK)
  {
    this.g = paramK;
    return this;
  }

  public final J a(Protocol paramProtocol)
  {
    this.b = paramProtocol;
    return this;
  }

  public final J a(t paramt)
  {
    this.e = paramt;
    return this;
  }

  public final J a(u paramu)
  {
    this.f = paramu.b();
    return this;
  }

  public final J a(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public final J a(String paramString1, String paramString2)
  {
    this.f.b(paramString1, paramString2);
    return this;
  }

  public final J b(I paramI)
  {
    if (paramI != null)
      a("cacheResponse", paramI);
    this.i = paramI;
    return this;
  }

  public final J b(String paramString1, String paramString2)
  {
    this.f.a(paramString1, paramString2);
    return this;
  }

  public final J c(I paramI)
  {
    if ((paramI != null) && (I.g(paramI) != null))
      throw new IllegalArgumentException("priorResponse.body != null");
    this.j = paramI;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.J
 * JD-Core Version:    0.6.0
 */