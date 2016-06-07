package com.squareup.okhttp.internal.spdy;

final class n
{
  private final n[] a;
  private final int b;
  private final int c;

  n()
  {
    this.a = new n[256];
    this.b = 0;
    this.c = 0;
  }

  n(int paramInt1, int paramInt2)
  {
    this.a = null;
    this.b = paramInt1;
    int i = paramInt2 & 0x7;
    if (i == 0)
      i = 8;
    this.c = i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.n
 * JD-Core Version:    0.6.0
 */