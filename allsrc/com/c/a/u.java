package com.c.a;

final class u extends s
{
  private n c;
  private int d;

  public u(String paramString, int[] paramArrayOfInt)
  {
    super(paramString, 0);
    a(paramArrayOfInt);
  }

  private u d()
  {
    u localu = (u)super.a();
    localu.c = ((n)localu.b);
    return localu;
  }

  final void a(float paramFloat)
  {
    this.d = this.c.b(paramFloat);
  }

  public final void a(int[] paramArrayOfInt)
  {
    super.a(paramArrayOfInt);
    this.c = ((n)this.b);
  }

  final Object c()
  {
    return Integer.valueOf(this.d);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.u
 * JD-Core Version:    0.6.0
 */