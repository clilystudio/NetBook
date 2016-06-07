package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import org.mozilla.universalchardet.a;

public final class h extends CharsetProber
{
  private static final byte[] d = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7 };
  private static final byte[] e = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3 };
  private CharsetProber.ProbingState a;
  private byte b;
  private int[] c = new int[4];

  public h()
  {
    d();
  }

  public final String a()
  {
    return a.r;
  }

  public final CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteBuffer localByteBuffer = c(paramArrayOfByte, paramInt1, paramInt2);
    byte[] arrayOfByte = localByteBuffer.array();
    int i = localByteBuffer.position();
    for (int j = 0; ; j++)
    {
      int m;
      int n;
      if (j < i)
      {
        int k = 0xFF & arrayOfByte[j];
        m = d[k];
        n = e[(m + (this.b << 3))];
        if (n == 0)
          this.a = CharsetProber.ProbingState.NOT_ME;
      }
      else
      {
        return this.a;
      }
      int[] arrayOfInt = this.c;
      arrayOfInt[n] = (1 + arrayOfInt[n]);
      this.b = m;
    }
  }

  public final float b()
  {
    int i = 0;
    if (this.a == CharsetProber.ProbingState.NOT_ME)
      return 0.01F;
    for (int j = 0; j < this.c.length; j++)
      i += this.c[j];
    float f;
    if (i <= 0)
      f = 0.0F;
    while (true)
    {
      if (f < 0.0F)
        f = 0.0F;
      return f * 0.5F;
      f = this.c[3] / i - 20.0F * this.c[1] / i;
    }
  }

  public final CharsetProber.ProbingState c()
  {
    return this.a;
  }

  public final void d()
  {
    this.a = CharsetProber.ProbingState.DETECTING;
    this.b = 1;
    for (int i = 0; i < this.c.length; i++)
      this.c[i] = 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.h
 * JD-Core Version:    0.6.0
 */