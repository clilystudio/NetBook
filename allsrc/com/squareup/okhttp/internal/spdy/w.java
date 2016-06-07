package com.squareup.okhttp.internal.spdy;

import java.util.Arrays;

public final class w
{
  private int a;
  private int b;
  private int c;
  private final int[] d = new int[10];

  final w a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= 10)
      return this;
    int i = 1 << paramInt1;
    this.a = (i | this.a);
    if ((paramInt2 & 0x1) != 0)
    {
      this.b = (i | this.b);
      if ((paramInt2 & 0x2) == 0)
        break label83;
      this.c = (i | this.c);
    }
    while (true)
    {
      this.d[paramInt1] = paramInt3;
      return this;
      this.b &= (i ^ 0xFFFFFFFF);
      break;
      label83: this.c &= (i ^ 0xFFFFFFFF);
    }
  }

  final void a()
  {
    this.c = 0;
    this.b = 0;
    this.a = 0;
    Arrays.fill(this.d, 0);
  }

  final void a(w paramw)
  {
    for (int i = 0; i < 10; i++)
    {
      if (!paramw.a(i))
        continue;
      a(i, paramw.c(i), paramw.d[i]);
    }
  }

  final boolean a(int paramInt)
  {
    return (1 << paramInt & this.a) != 0;
  }

  final int b()
  {
    return Integer.bitCount(this.a);
  }

  final int b(int paramInt)
  {
    return this.d[paramInt];
  }

  final int c()
  {
    if ((0x2 & this.a) != 0)
      return this.d[1];
    return -1;
  }

  final int c(int paramInt)
  {
    int i;
    if ((1 << paramInt & this.c) != 0)
    {
      i = 1;
      if (i == 0)
        break label56;
    }
    label56: for (int j = 2; ; j = 0)
    {
      int k = 1 << paramInt & this.b;
      int m = 0;
      if (k != 0)
        m = 1;
      if (m != 0)
        j |= 1;
      return j;
      i = 0;
      break;
    }
  }

  final int d(int paramInt)
  {
    if ((0x20 & this.a) != 0)
      paramInt = this.d[5];
    return paramInt;
  }

  final int e(int paramInt)
  {
    if ((0x80 & this.a) != 0)
      return this.d[7];
    return 65536;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.w
 * JD-Core Version:    0.6.0
 */