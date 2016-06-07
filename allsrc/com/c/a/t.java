package com.c.a;

final class t extends s
{
  private l c;
  private float d;

  public t(String paramString, float[] paramArrayOfFloat)
  {
    super(paramString, 0);
    a(paramArrayOfFloat);
  }

  private t d()
  {
    t localt = (t)super.a();
    localt.c = ((l)localt.b);
    return localt;
  }

  final void a(float paramFloat)
  {
    this.d = this.c.b(paramFloat);
  }

  public final void a(float[] paramArrayOfFloat)
  {
    super.a(paramArrayOfFloat);
    this.c = ((l)this.b);
  }

  final Object c()
  {
    return Float.valueOf(this.d);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.t
 * JD-Core Version:    0.6.0
 */