package org.mozilla.universalchardet.prober.d;

public final class k
{
  private int a = 3;
  private int b = 7;
  private int c = 2;
  private int d = 15;
  private int[] e;

  public k(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    this.e = paramArrayOfInt;
  }

  public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    int i = paramInt1 | paramInt2 << 4;
    int j = paramInt3 | paramInt4 << 4;
    int k = paramInt5 | paramInt6 << 4;
    int m = paramInt7 | paramInt8 << 4;
    return i | j << 8 | (k | m << 8) << 16;
  }

  public final int a(int paramInt)
  {
    return this.e[(paramInt >> this.a)] >> ((paramInt & this.b) << this.c) & this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.d.k
 * JD-Core Version:    0.6.0
 */