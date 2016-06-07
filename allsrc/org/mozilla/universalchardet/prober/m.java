package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.a;
import org.mozilla.universalchardet.prober.d.b;
import org.mozilla.universalchardet.prober.d.n;

public final class m extends CharsetProber
{
  private static final org.mozilla.universalchardet.prober.d.m d = new n();
  private b a = new b(d);
  private CharsetProber.ProbingState b;
  private int c = 0;

  public m()
  {
    d();
  }

  public final String a()
  {
    return a.u;
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    while (true)
    {
      int j;
      if (paramInt1 < i)
      {
        j = this.a.a(paramArrayOfByte[paramInt1]);
        if (j != 1)
          break label68;
      }
      for (this.b = CharsetProber.ProbingState.NOT_ME; ; this.b = CharsetProber.ProbingState.FOUND_IT)
      {
        if ((this.b == CharsetProber.ProbingState.DETECTING) && (b() > 0.95F))
          this.b = CharsetProber.ProbingState.FOUND_IT;
        return this.b;
        label68: if (j != 2)
          break;
      }
      if ((j == 0) && (this.a.a() >= 2))
        this.c = (1 + this.c);
      paramInt1++;
    }
  }

  public final float b()
  {
    float f = 0.99F;
    if (this.c < 6)
    {
      for (int i = 0; i < this.c; i++)
        f *= 0.5F;
      f = 1.0F - f;
    }
    return f;
  }

  public final CharsetProber.ProbingState c()
  {
    return this.b;
  }

  public final void d()
  {
    this.a.b();
    this.c = 0;
    this.b = CharsetProber.ProbingState.DETECTING;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.m
 * JD-Core Version:    0.6.0
 */