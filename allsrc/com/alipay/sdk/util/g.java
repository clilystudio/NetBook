package com.alipay.sdk.util;

public enum g
{
  private int p;
  private String q;

  static
  {
    g[] arrayOfg = new g[15];
    arrayOfg[0] = a;
    arrayOfg[1] = b;
    arrayOfg[2] = c;
    arrayOfg[3] = d;
    arrayOfg[4] = e;
    arrayOfg[5] = f;
    arrayOfg[6] = g;
    arrayOfg[7] = h;
    arrayOfg[8] = i;
    arrayOfg[9] = j;
    arrayOfg[10] = k;
    arrayOfg[11] = l;
    arrayOfg[12] = m;
    arrayOfg[13] = n;
    arrayOfg[14] = o;
    r = arrayOfg;
  }

  private g(int paramInt, String paramString)
  {
    this.p = paramInt;
    this.q = paramString;
  }

  public static g a(int paramInt)
  {
    for (g localg : values())
      if (localg.p == paramInt)
        return localg;
    return o;
  }

  public final String a()
  {
    return this.q;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.g
 * JD-Core Version:    0.6.0
 */