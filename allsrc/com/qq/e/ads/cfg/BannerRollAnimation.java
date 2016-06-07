package com.qq.e.ads.cfg;

public enum BannerRollAnimation
{
  private final int a;

  static
  {
    BannerRollAnimation[] arrayOfBannerRollAnimation = new BannerRollAnimation[2];
    arrayOfBannerRollAnimation[0] = Default;
    arrayOfBannerRollAnimation[1] = NoAnimation;
    b = arrayOfBannerRollAnimation;
  }

  private BannerRollAnimation(int paramInt)
  {
    this.a = paramInt;
  }

  public final int value()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.cfg.BannerRollAnimation
 * JD-Core Version:    0.6.0
 */