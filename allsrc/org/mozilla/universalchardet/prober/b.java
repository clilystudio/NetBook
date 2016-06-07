package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.prober.d.m;

public final class b extends CharsetProber
{
  private static final m f = new org.mozilla.universalchardet.prober.d.c();
  private org.mozilla.universalchardet.prober.d.b a = new org.mozilla.universalchardet.prober.d.b(f);
  private CharsetProber.ProbingState b;
  private org.mozilla.universalchardet.prober.a.a c = new org.mozilla.universalchardet.prober.a.a();
  private org.mozilla.universalchardet.prober.b.c d = new org.mozilla.universalchardet.prober.b.c();
  private byte[] e = new byte[2];

  public b()
  {
    d();
  }

  public final String a()
  {
    return org.mozilla.universalchardet.a.i;
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
      this.e[0] = paramArrayOfByte[(i - 1)];
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
        break label174;
      this.e[1] = paramArrayOfByte[paramInt1];
      this.c.a(this.e, 0, m);
      this.d.a(this.e, 0, m);
    }
    while (true)
    {
      j++;
      break;
      label174: this.c.a(paramArrayOfByte, j - 1, m);
      this.d.a(paramArrayOfByte, j - 1, m);
    }
  }

  public final float b()
  {
    return Math.max(this.c.a(), this.d.a());
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
    this.d.b();
    Arrays.fill(this.e, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.b
 * JD-Core Version:    0.6.0
 */