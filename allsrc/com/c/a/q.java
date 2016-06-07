package com.c.a;

final class q extends o
{
  int b;

  q(float paramFloat)
  {
    this.a = paramFloat;
  }

  q(float paramFloat, int paramInt)
  {
    this.a = paramFloat;
    this.b = paramInt;
  }

  private q d()
  {
    q localq = new q(this.a, this.b);
    localq.a(b());
    return localq;
  }

  public final Object a()
  {
    return Integer.valueOf(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.q
 * JD-Core Version:    0.6.0
 */