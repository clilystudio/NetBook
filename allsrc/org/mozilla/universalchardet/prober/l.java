package org.mozilla.universalchardet.prober;

public final class l extends CharsetProber
{
  private CharsetProber.ProbingState a;
  private org.mozilla.universalchardet.prober.c.l b;
  private boolean c;
  private short d;
  private int e;
  private int[] f;
  private int g;
  private int h;
  private CharsetProber i;

  public l(org.mozilla.universalchardet.prober.c.l paraml)
  {
    this.b = paraml;
    this.c = false;
    this.i = null;
    this.f = new int[4];
    d();
  }

  public l(org.mozilla.universalchardet.prober.c.l paraml, boolean paramBoolean, CharsetProber paramCharsetProber)
  {
    this.b = paraml;
    this.c = paramBoolean;
    this.i = paramCharsetProber;
    this.f = new int[4];
    d();
  }

  public final String a()
  {
    if (this.i == null)
      return this.b.b();
    return this.i.a();
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = paramInt1 + paramInt2;
    if (paramInt1 < j)
    {
      int k = this.b.a(paramArrayOfByte[paramInt1]);
      if (k < 250)
        this.g = (1 + this.g);
      if (k < 64)
      {
        this.h = (1 + this.h);
        if (this.d < 64)
        {
          this.e = (1 + this.e);
          if (this.c)
            break label133;
          int[] arrayOfInt2 = this.f;
          int n = this.b.a(k + (this.d << 6));
          arrayOfInt2[n] = (1 + arrayOfInt2[n]);
        }
      }
      while (true)
      {
        this.d = k;
        paramInt1++;
        break;
        label133: int[] arrayOfInt1 = this.f;
        int m = this.b.a((k << 6) + this.d);
        arrayOfInt1[m] = (1 + arrayOfInt1[m]);
      }
    }
    float f1;
    if ((this.a == CharsetProber.ProbingState.DETECTING) && (this.e > 1024))
    {
      f1 = b();
      if (f1 <= 0.95F)
        break label219;
      this.a = CharsetProber.ProbingState.FOUND_IT;
    }
    while (true)
    {
      return this.a;
      label219: if (f1 >= 0.05F)
        continue;
      this.a = CharsetProber.ProbingState.NOT_ME;
    }
  }

  public final float b()
  {
    if (this.e > 0)
    {
      float f1 = 1.0F * this.f[3] / this.e / this.b.a() * this.h / this.g;
      if (f1 >= 1.0F)
        f1 = 0.99F;
      return f1;
    }
    return 0.01F;
  }

  public final CharsetProber.ProbingState c()
  {
    return this.a;
  }

  public final void d()
  {
    this.a = CharsetProber.ProbingState.DETECTING;
    this.d = 255;
    for (int j = 0; j < 4; j++)
      this.f[j] = 0;
    this.e = 0;
    this.g = 0;
    this.h = 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.l
 * JD-Core Version:    0.6.0
 */