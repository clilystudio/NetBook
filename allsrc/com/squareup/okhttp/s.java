package com.squareup.okhttp;

import okio.f;

public final class s
{
  private static final z a = z.a("application/x-www-form-urlencoded");
  private final f b = new f();

  public final E a()
  {
    if (this.b.b() == 0L)
      throw new IllegalStateException("Form encoded body must have at least one part.");
    return new F(a, this.b.q());
  }

  public final s a(String paramString1, String paramString2)
  {
    if (this.b.b() > 0L)
      this.b.b(38);
    w.a(this.b, paramString1, 0, paramString1.length(), " \"'<>#&=", false, true);
    this.b.b(61);
    w.a(this.b, paramString2, 0, paramString2.length(), " \"'<>#&=", false, true);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.s
 * JD-Core Version:    0.6.0
 */