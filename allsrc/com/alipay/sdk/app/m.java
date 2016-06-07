package com.alipay.sdk.app;

public enum m
{
  private int g;
  private String h;

  static
  {
    m[] arrayOfm = new m[6];
    arrayOfm[0] = a;
    arrayOfm[1] = b;
    arrayOfm[2] = c;
    arrayOfm[3] = d;
    arrayOfm[4] = e;
    arrayOfm[5] = f;
    i = arrayOfm;
  }

  private m(int paramInt, String paramString)
  {
    this.g = paramInt;
    this.h = paramString;
  }

  public static m a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return b;
    case 9000:
      return a;
    case 6001:
      return c;
    case 6002:
      return d;
    case 4001:
      return e;
    case 8000:
    }
    return f;
  }

  public final int a()
  {
    return this.g;
  }

  public final String b()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.m
 * JD-Core Version:    0.6.0
 */