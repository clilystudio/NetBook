package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import org.mozilla.universalchardet.prober.c.d;
import org.mozilla.universalchardet.prober.c.e;
import org.mozilla.universalchardet.prober.c.f;
import org.mozilla.universalchardet.prober.c.h;
import org.mozilla.universalchardet.prober.c.i;
import org.mozilla.universalchardet.prober.c.k;
import org.mozilla.universalchardet.prober.c.m;
import org.mozilla.universalchardet.prober.c.n;
import org.mozilla.universalchardet.prober.c.o;

public final class j extends CharsetProber
{
  private static final org.mozilla.universalchardet.prober.c.l f = new n();
  private static final org.mozilla.universalchardet.prober.c.l g = new org.mozilla.universalchardet.prober.c.g();
  private static final org.mozilla.universalchardet.prober.c.l h = new i();
  private static final org.mozilla.universalchardet.prober.c.l i = new k();
  private static final org.mozilla.universalchardet.prober.c.l j = new f();
  private static final org.mozilla.universalchardet.prober.c.l k = new e();
  private static final org.mozilla.universalchardet.prober.c.l l = new org.mozilla.universalchardet.prober.c.j();
  private static final org.mozilla.universalchardet.prober.c.l m = new o();
  private static final org.mozilla.universalchardet.prober.c.l n = new h();
  private static final org.mozilla.universalchardet.prober.c.l o = new m();
  private static final org.mozilla.universalchardet.prober.c.l p = new d();
  private CharsetProber.ProbingState a;
  private CharsetProber[] b = new CharsetProber[13];
  private boolean[] c = new boolean[13];
  private int d;
  private int e;

  public j()
  {
    this.b[0] = new l(f);
    this.b[1] = new l(g);
    this.b[2] = new l(h);
    this.b[3] = new l(i);
    this.b[4] = new l(j);
    this.b[5] = new l(k);
    this.b[6] = new l(l);
    this.b[7] = new l(m);
    this.b[8] = new l(n);
    this.b[9] = new l(o);
    g localg = new g();
    this.b[10] = localg;
    this.b[11] = new l(p, false, localg);
    this.b[12] = new l(p, true, localg);
    localg.a(this.b[11], this.b[12]);
    d();
  }

  public final String a()
  {
    if (this.d == -1)
    {
      b();
      if (this.d == -1)
        this.d = 0;
    }
    return this.b[this.d].a();
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteBuffer localByteBuffer = b(paramArrayOfByte, paramInt1, paramInt2);
    if (localByteBuffer.position() != 0);
    for (int i1 = 0; ; i1++)
    {
      CharsetProber.ProbingState localProbingState;
      if (i1 < this.b.length)
      {
        if (this.c[i1] == 0)
          continue;
        localProbingState = this.b[i1].a(localByteBuffer.array(), 0, localByteBuffer.position());
        if (localProbingState != CharsetProber.ProbingState.FOUND_IT)
          break label89;
        this.d = i1;
      }
      for (this.a = CharsetProber.ProbingState.FOUND_IT; ; this.a = CharsetProber.ProbingState.NOT_ME)
      {
        return this.a;
        label89: if (localProbingState != CharsetProber.ProbingState.NOT_ME)
          break;
        this.c[i1] = false;
        this.e = (-1 + this.e);
        if (this.e > 0)
          break;
      }
    }
  }

  public final float b()
  {
    float f1 = 0.0F;
    if (this.a == CharsetProber.ProbingState.FOUND_IT)
      f1 = 0.99F;
    while (true)
    {
      return f1;
      if (this.a == CharsetProber.ProbingState.NOT_ME)
        return 0.01F;
      for (int i1 = 0; i1 < this.b.length; i1++)
      {
        if (this.c[i1] == 0)
          continue;
        float f2 = this.b[i1].b();
        if (f1 >= f2)
          continue;
        this.d = i1;
        f1 = f2;
      }
    }
  }

  public final CharsetProber.ProbingState c()
  {
    return this.a;
  }

  public final void d()
  {
    int i1 = 0;
    this.e = 0;
    while (i1 < this.b.length)
    {
      this.b[i1].d();
      this.c[i1] = true;
      this.e = (1 + this.e);
      i1++;
    }
    this.d = -1;
    this.a = CharsetProber.ProbingState.DETECTING;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.j
 * JD-Core Version:    0.6.0
 */