package com.qq.e.ads.banner;

import com.qq.e.comm.util.GDTLogger;

public abstract class AbstractBannerADListener
  implements BannerADListener
{
  public void onADClicked()
  {
    GDTLogger.i("On BannerAD Clicked");
  }

  public void onADCloseOverlay()
  {
    GDTLogger.i("On BannerAD AdCloseOverlay");
  }

  public void onADClosed()
  {
    GDTLogger.i("On BannerAD Closed");
  }

  public void onADExposure()
  {
    GDTLogger.i("On BannerAD Exposured");
  }

  public void onADLeftApplication()
  {
    GDTLogger.i("On BannerAD AdLeftApplication");
  }

  public void onADOpenOverlay()
  {
    GDTLogger.i("On BannerAD AdOpenOverlay");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.AbstractBannerADListener
 * JD-Core Version:    0.6.0
 */