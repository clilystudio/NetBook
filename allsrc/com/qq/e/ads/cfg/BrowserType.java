package com.qq.e.ads.cfg;

public enum BrowserType
{
  private final int a;

  static
  {
    BrowserType[] arrayOfBrowserType = new BrowserType[3];
    arrayOfBrowserType[0] = Default;
    arrayOfBrowserType[1] = Inner;
    arrayOfBrowserType[2] = Sys;
    b = arrayOfBrowserType;
  }

  private BrowserType(int paramInt)
  {
    this.a = paramInt;
  }

  public final int value()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.cfg.BrowserType
 * JD-Core Version:    0.6.0
 */