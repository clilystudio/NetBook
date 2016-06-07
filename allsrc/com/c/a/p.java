package com.c.a;

final class p extends o
{
  float b;

  p(float paramFloat)
  {
    this.a = paramFloat;
  }

  p(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }

  private p d()
  {
    p localp = new p(this.a, this.b);
    localp.a(b());
    return localp;
  }

  public final Object a()
  {
    return Float.valueOf(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.p
 * JD-Core Version:    0.6.0
 */