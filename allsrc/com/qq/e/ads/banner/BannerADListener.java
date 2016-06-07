package com.qq.e.ads.banner;

public abstract interface BannerADListener
{
  public abstract void onADClicked();

  public abstract void onADCloseOverlay();

  public abstract void onADClosed();

  public abstract void onADExposure();

  public abstract void onADLeftApplication();

  public abstract void onADOpenOverlay();

  public abstract void onADReceiv();

  public abstract void onNoAD(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.BannerADListener
 * JD-Core Version:    0.6.0
 */