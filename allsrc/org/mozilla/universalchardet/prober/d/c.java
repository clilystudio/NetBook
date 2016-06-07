package org.mozilla.universalchardet.prober.d;

import org.mozilla.universalchardet.a;

public final class c extends m
{
  private static int[] a;
  private static int[] b;
  private static int[] c;

  static
  {
    int[] arrayOfInt1 = new int[32];
    arrayOfInt1[0] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[1] = k.a(4, 4, 4, 4, 4, 4, 5, 5);
    arrayOfInt1[2] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[3] = k.a(4, 4, 4, 5, 4, 4, 4, 4);
    arrayOfInt1[4] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[5] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[6] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[7] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[8] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[9] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[10] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[11] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[12] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[13] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[14] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[15] = k.a(4, 4, 4, 4, 4, 4, 4, 4);
    arrayOfInt1[16] = k.a(5, 5, 5, 5, 5, 5, 5, 5);
    arrayOfInt1[17] = k.a(5, 5, 5, 5, 5, 5, 1, 3);
    arrayOfInt1[18] = k.a(5, 5, 5, 5, 5, 5, 5, 5);
    arrayOfInt1[19] = k.a(5, 5, 5, 5, 5, 5, 5, 5);
    arrayOfInt1[20] = k.a(5, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[21] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[22] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[23] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[24] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[25] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[26] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[27] = k.a(2, 2, 2, 2, 2, 2, 2, 2);
    arrayOfInt1[28] = k.a(0, 0, 0, 0, 0, 0, 0, 0);
    arrayOfInt1[29] = k.a(0, 0, 0, 0, 0, 0, 0, 0);
    arrayOfInt1[30] = k.a(0, 0, 0, 0, 0, 0, 0, 0);
    arrayOfInt1[31] = k.a(0, 0, 0, 0, 0, 0, 0, 5);
    a = arrayOfInt1;
    int[] arrayOfInt2 = new int[5];
    arrayOfInt2[0] = k.a(3, 4, 3, 5, 0, 1, 1, 1);
    arrayOfInt2[1] = k.a(1, 1, 1, 1, 2, 2, 2, 2);
    arrayOfInt2[2] = k.a(2, 2, 0, 1, 0, 1, 1, 1);
    arrayOfInt2[3] = k.a(1, 1, 0, 1, 1, 1, 3, 1);
    arrayOfInt2[4] = k.a(3, 1, 1, 1, 0, 0, 0, 0);
    b = arrayOfInt2;
    c = new int[] { 2, 2, 2, 3, 1, 0 };
  }

  public c()
  {
    super(new k(3, 7, 2, 15, a), 6, new k(3, 7, 2, 15, b), c, a.i);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.d.c
 * JD-Core Version:    0.6.0
 */