package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.a;

public final class g extends CharsetProber
{
  private int a;
  private int b;
  private byte c;
  private byte d;
  private CharsetProber e = null;
  private CharsetProber f = null;

  public g()
  {
    d();
  }

  private static boolean a(byte paramByte)
  {
    int i = paramByte & 0xFF;
    return (i == 234) || (i == 237) || (i == 239) || (i == 243) || (i == 245);
  }

  public final String a()
  {
    int i = this.a - this.b;
    if (i >= 5)
      return a.t;
    if (i <= -5)
      return a.f;
    float f1 = this.e.b() - this.f.b();
    if (f1 > 0.01F)
      return a.t;
    if (f1 < -0.01F)
      return a.f;
    if (i < 0)
      return a.f;
    return a.t;
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (c() == CharsetProber.ProbingState.NOT_ME)
      return CharsetProber.ProbingState.NOT_ME;
    int i = paramInt1 + paramInt2;
    if (paramInt1 < i)
    {
      byte b1 = paramArrayOfByte[paramInt1];
      if (b1 == 32)
        if (this.d != 32)
        {
          if (!a(this.c))
            break label86;
          this.a = (1 + this.a);
        }
      while (true)
      {
        this.d = this.c;
        this.c = b1;
        paramInt1++;
        break;
        label86: int j = 0xFF & this.c;
        if ((j == 235) || (j == 238) || (j == 240) || (j == 244));
        for (int k = 1; ; k = 0)
        {
          if (k == 0)
            break label153;
          this.b = (1 + this.b);
          break;
        }
        label153: continue;
        if ((this.d != 32) || (!a(this.c)) || (b1 == 32))
          continue;
        this.b = (1 + this.b);
      }
    }
    return CharsetProber.ProbingState.DETECTING;
  }

  public final void a(CharsetProber paramCharsetProber1, CharsetProber paramCharsetProber2)
  {
    this.e = paramCharsetProber1;
    this.f = paramCharsetProber2;
  }

  public final float b()
  {
    return 0.0F;
  }

  public final CharsetProber.ProbingState c()
  {
    if ((this.e.c() == CharsetProber.ProbingState.NOT_ME) && (this.f.c() == CharsetProber.ProbingState.NOT_ME))
      return CharsetProber.ProbingState.NOT_ME;
    return CharsetProber.ProbingState.DETECTING;
  }

  public final void d()
  {
    this.a = 0;
    this.b = 0;
    this.c = 32;
    this.d = 32;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.g
 * JD-Core Version:    0.6.0
 */