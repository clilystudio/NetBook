package com.arcsoft.hpay100;

import android.app.Dialog;

final class h
  implements Runnable
{
  h(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void run()
  {
    try
    {
      if ((HPaySdkActivity.w(this.a) != null) && (HPaySdkActivity.w(this.a).isShowing()))
      {
        HPaySdkActivity.w(this.a).dismiss();
        HPaySdkActivity.a(this.a, null);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.h
 * JD-Core Version:    0.6.0
 */