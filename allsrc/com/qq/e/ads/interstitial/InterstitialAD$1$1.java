package com.qq.e.ads.interstitial;

import com.qq.e.comm.pi.IADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;

class InterstitialAD$1$1
  implements Runnable
{
  public void run()
  {
    try
    {
      if (this.a != null)
      {
        InterstitialAD.a(this.b.d, this.a.getIADView(this.b.a, this.b.b, this.b.c));
        InterstitialAD.a(this.b.d).setAdListener(new InterstitialAD.ADListenerAdapter(this.b.d, 0));
        InterstitialAD.b(this.b.d);
        while (InterstitialAD.c(this.b.d) > 0)
          this.b.d.loadAD();
      }
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("Exception while init IAD Core", localThrowable);
      return;
      return;
    }
    finally
    {
      InterstitialAD.b(this.b.d);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.interstitial.InterstitialAD.1.1
 * JD-Core Version:    0.6.0
 */