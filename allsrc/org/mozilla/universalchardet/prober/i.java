package org.mozilla.universalchardet.prober;

public final class i extends CharsetProber
{
  private CharsetProber.ProbingState a;
  private CharsetProber[] b = new CharsetProber[7];
  private boolean[] c = new boolean[7];
  private int d;
  private int e;

  public i()
  {
    this.b[0] = new m();
    this.b[1] = new k();
    this.b[2] = new b();
    this.b[3] = new f();
    this.b[4] = new c();
    this.b[5] = new a();
    this.b[6] = new d();
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
    byte[] arrayOfByte = new byte[paramInt2];
    int i = paramInt1 + paramInt2;
    int j = 0;
    int k = 1;
    int i2;
    int i1;
    if (paramInt1 < i)
      if ((0x80 & paramArrayOfByte[paramInt1]) != 0)
      {
        i2 = j + 1;
        arrayOfByte[j] = paramArrayOfByte[paramInt1];
        i1 = 1;
      }
    while (true)
    {
      paramInt1++;
      int i3 = i2;
      k = i1;
      j = i3;
      break;
      if (k != 0)
      {
        i2 = j + 1;
        arrayOfByte[j] = paramArrayOfByte[paramInt1];
        i1 = 0;
        continue;
        for (int m = 0; ; m++)
        {
          CharsetProber.ProbingState localProbingState;
          if (m < this.b.length)
          {
            if (this.c[m] == 0)
              continue;
            localProbingState = this.b[m].a(arrayOfByte, 0, j);
            if (localProbingState != CharsetProber.ProbingState.FOUND_IT)
              break label158;
            this.d = m;
          }
          for (this.a = CharsetProber.ProbingState.FOUND_IT; ; this.a = CharsetProber.ProbingState.NOT_ME)
          {
            return this.a;
            label158: if (localProbingState != CharsetProber.ProbingState.NOT_ME)
              break;
            this.c[m] = false;
            this.e = (-1 + this.e);
            if (this.e > 0)
              break;
          }
        }
      }
      int n = j;
      i1 = k;
      i2 = n;
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
      for (int i = 0; i < this.b.length; i++)
      {
        if (this.c[i] == 0)
          continue;
        float f2 = this.b[i].b();
        if (f1 >= f2)
          continue;
        this.d = i;
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
    int i = 0;
    this.e = 0;
    while (i < this.b.length)
    {
      this.b[i].d();
      this.c[i] = true;
      this.e = (1 + this.e);
      i++;
    }
    this.d = -1;
    this.a = CharsetProber.ProbingState.DETECTING;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.i
 * JD-Core Version:    0.6.0
 */