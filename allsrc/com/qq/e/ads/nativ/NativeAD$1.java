package com.qq.e.ads.nativ;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;

class NativeAD$1
  implements Runnable
{
  public void run()
  {
    if (GDTADManager.getInstance().initWith(this.a, this.b))
      try
      {
        POFactory localPOFactory = GDTADManager.getInstance().getPM().getPOFactory();
        new Handler(Looper.getMainLooper()).post(new NativeAD.1.1(this, localPOFactory));
        return;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("Exception while init Native plugin", localThrowable);
        return;
      }
    GDTLogger.e("Fail to init ADManager");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.nativ.NativeAD.1
 * JD-Core Version:    0.6.0
 */