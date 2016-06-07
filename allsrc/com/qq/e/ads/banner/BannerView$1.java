package com.qq.e.ads.banner;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;

class BannerView$1
  implements Runnable
{
  public void run()
  {
    if (GDTADManager.getInstance().initWith(this.a, this.b))
      try
      {
        POFactory localPOFactory = GDTADManager.getInstance().getPM().getPOFactory();
        new Handler(Looper.getMainLooper()).post(new BannerView.1.1(this, localPOFactory));
        return;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("Exception while init Banner plugin", localThrowable);
        return;
      }
    GDTLogger.e("Fail to init ADManager");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.BannerView.1
 * JD-Core Version:    0.6.0
 */