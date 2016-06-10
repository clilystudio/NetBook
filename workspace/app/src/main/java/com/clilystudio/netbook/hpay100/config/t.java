package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import com.clilystudio.netbook.hpay100.a_Pack.a;

final class t
  implements Runnable
{
  t(Context paramContext, String paramString)
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
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.t
 * JD-Core Version:    0.6.0
 */