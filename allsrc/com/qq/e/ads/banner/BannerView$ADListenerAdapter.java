package com.qq.e.ads.banner;

import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.util.GDTLogger;

class BannerView$ADListenerAdapter
  implements ADListener
{
  private BannerView$ADListenerAdapter(BannerView paramBannerView)
  {
  }

  public void onADEvent(ADEvent paramADEvent)
  {
    if (BannerView.h(this.a) == null)
    {
      GDTLogger.i("No DevADListener Binded");
      return;
    }
    switch (paramADEvent.getType())
    {
    default:
      return;
    case 1:
      if ((paramADEvent.getParas().length == 1) && ((paramADEvent.getParas()[0] instanceof Integer)))
      {
        BannerView.h(this.a).onNoAD(((Integer)paramADEvent.getParas()[0]).intValue());
        return;
      }
      GDTLogger.e("AdEvent.Paras error for Banner(" + paramADEvent + ")");
      return;
    case 2:
      BannerView.h(this.a).onADReceiv();
      return;
    case 3:
      BannerView.h(this.a).onADExposure();
      return;
    case 4:
      BannerView.h(this.a).onADClosed();
      return;
    case 5:
      BannerView.h(this.a).onADClicked();
      return;
    case 6:
      BannerView.h(this.a).onADLeftApplication();
      return;
    case 7:
      BannerView.h(this.a).onADOpenOverlay();
      return;
    case 8:
    }
    BannerView.h(this.a).onADCloseOverlay();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.BannerView.ADListenerAdapter
 * JD-Core Version:    0.6.0
 */