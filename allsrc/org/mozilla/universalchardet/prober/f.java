package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.a;
import org.mozilla.universalchardet.prober.d.b;
import org.mozilla.universalchardet.prober.d.m;

public final class f extends CharsetProber
{
  private static final m e = new org.mozilla.universalchardet.prober.d.f();
  private b a = new b(e);
  private CharsetProber.ProbingState b;
  private org.mozilla.universalchardet.prober.b.f c = new org.mozilla.universalchardet.prober.b.f();
  private byte[] d = new byte[2];

  public f()
  {
    d();
  }

  public final String a()
  {
    return a.h;
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1;
    int k;
    if (j < i)
    {
      k = this.a.a(paramArrayOfByte[j]);
      if (k != 1)
        break label95;
    }
    for (this.b = CharsetProber.ProbingState.NOT_ME; ; this.b = CharsetProber.ProbingState.FOUND_IT)
    {
      this.d[0] = paramArrayOfByte[(i - 1)];
      if ((this.b == CharsetProber.ProbingState.DETECTING) && (this.c.c()) && (b() > 0.95F))
        this.b = CharsetProber.ProbingState.FOUND_IT;
      return this.b;
      label95: if (k != 2)
        break;
    }
    int m;
    if (k == 0)
    {
      m = this.a.a();
      if (j != paramInt1)
        break label160;
      this.d[1] = paramArrayOfByte[paramInt1];
      this.c.a(this.d, 0, m);
    }
    while (true)
    {
      j++;
      break;
      label160: this.c.a(paramArrayOfByte, j - 1, m);
    }
  }

  public final float b()
  {
    return this.c.a();
  }

  public final CharsetProber.ProbingState c()
  {
    return this.b;
  }

  public final void d()
  {
    this.a.b();
    this.b = CharsetProber.ProbingState.DETECTING;
    this.c.b();
    Arrays.fill(this.d, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.f
 * JD-Core Version:    0.6.0
 */