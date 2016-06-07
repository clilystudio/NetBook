package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.prober.d.b;
import org.mozilla.universalchardet.prober.d.g;
import org.mozilla.universalchardet.prober.d.h;
import org.mozilla.universalchardet.prober.d.i;
import org.mozilla.universalchardet.prober.d.j;

public final class e extends CharsetProber
{
  private static final g e = new g();
  private static final h f = new h();
  private static final i g = new i();
  private static final j h = new j();
  private b[] a = new b[4];
  private int b;
  private CharsetProber.ProbingState c;
  private String d;

  public e()
  {
    this.a[0] = new b(e);
    this.a[1] = new b(f);
    this.a[2] = new b(g);
    this.a[3] = new b(h);
    d();
  }

  public final String a()
  {
    return this.d;
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    while ((paramInt1 < i) && (this.c == CharsetProber.ProbingState.DETECTING))
    {
      int j = -1 + this.b;
      if (j >= 0)
      {
        int k = this.a[j].a(paramArrayOfByte[paramInt1]);
        if (k == 1)
        {
          this.b = (-1 + this.b);
          if (this.b <= 0)
          {
            this.c = CharsetProber.ProbingState.NOT_ME;
            return this.c;
          }
          if (j != this.b)
          {
            b localb = this.a[this.b];
            this.a[this.b] = this.a[j];
            this.a[j] = localb;
          }
        }
        do
        {
          j--;
          break;
        }
        while (k != 2);
        this.c = CharsetProber.ProbingState.FOUND_IT;
        this.d = this.a[j].c();
        return this.c;
      }
      paramInt1++;
    }
    return this.c;
  }

  public final float b()
  {
    return 0.99F;
  }

  public final CharsetProber.ProbingState c()
  {
    return this.c;
  }

  public final void d()
  {
    this.c = CharsetProber.ProbingState.DETECTING;
    for (int i = 0; i < this.a.length; i++)
      this.a[i].b();
    this.b = this.a.length;
    this.d = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.e
 * JD-Core Version:    0.6.0
 */