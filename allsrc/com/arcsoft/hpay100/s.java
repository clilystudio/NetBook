package com.arcsoft.hpay100;

import android.app.Dialog;
import com.arcsoft.hpay100.c.c;

final class s
  implements Runnable
{
  s(HPaySdkActivity paramHPaySdkActivity, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      HPaySdkActivity.b(this.a);
      HPaySdkActivity.a(this.a, c.a(this.a, this.b, false, null));
      if (HPaySdkActivity.w(this.a) != null)
        HPaySdkActivity.w(this.a).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.s
 * JD-Core Version:    0.6.0
 */