package com.qq.e.ads.nativ;

import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.Iterator;
import java.util.List;

class NativeAD$1$1
  implements Runnable
{
  public void run()
  {
    try
    {
      if (this.a != null)
      {
        NativeAD.a(this.b.d, this.a.getNativeADDelegate(this.b.a, this.b.b, this.b.c, new NativeAD.ADListenerAdapter(this.b.d, 0)));
        NativeAD.a(this.b.d);
        if (NativeAD.b(this.b.d) != null)
          this.b.d.setBrowserType(NativeAD.b(this.b.d));
        if (NativeAD.c(this.b.d) != null)
          this.b.d.setDownAPPConfirmPolicy(NativeAD.c(this.b.d));
        Iterator localIterator = NativeAD.d(this.b.d).iterator();
        while (localIterator.hasNext())
        {
          Integer localInteger = (Integer)localIterator.next();
          this.b.d.loadAD(localInteger.intValue());
        }
      }
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("Exception while init Native Core", localThrowable);
      return;
      return;
    }
    finally
    {
      NativeAD.a(this.b.d);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.nativ.NativeAD.1.1
 * JD-Core Version:    0.6.0
 */