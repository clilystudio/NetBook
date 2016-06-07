package com.arcsoft.hpay100.config;

import android.content.Context;
import com.arcsoft.hpay100.a.a;

final class u
  implements Runnable
{
  u(Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      a.a(this.a.getApplicationContext(), this.b, null, false, 30000, 40000, true);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.u
 * JD-Core Version:    0.6.0
 */