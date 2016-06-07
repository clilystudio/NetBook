package com.qq.e.ads.banner;

import com.qq.e.comm.pi.BVI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;

class BannerView$1$1
  implements Runnable
{
  public void run()
  {
    try
    {
      if (this.a != null)
      {
        BannerView.a(this.b.e, this.a.getBannerView(this.b.a, this.b.c, this.b.b, this.b.d));
        BannerView.a(this.b.e).setAdListener(new BannerView.ADListenerAdapter(this.b.e, 0));
        this.b.e.addView(BannerView.a(this.b.e).getView());
        BannerView.b(this.b.e);
        if (BannerView.c(this.b.e) != null)
          this.b.e.setDownConfirmPilicy(BannerView.c(this.b.e));
        if (BannerView.d(this.b.e) != null)
          this.b.e.setRefresh(BannerView.d(this.b.e).intValue());
        if (BannerView.e(this.b.e) != null)
          this.b.e.setRollAnimation(BannerView.e(this.b.e));
        if (BannerView.f(this.b.e) != null)
          this.b.e.setShowClose(BannerView.f(this.b.e).booleanValue());
        while (BannerView.g(this.b.e) > 0)
          this.b.e.loadAD();
      }
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("Exception while init Banner Core", localThrowable);
      return;
      return;
    }
    finally
    {
      BannerView.b(this.b.e);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.BannerView.1.1
 * JD-Core Version:    0.6.0
 */