package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.app.Dialog;
import com.clilystudio.netbook.hpay100.c.c;

final class b
  implements Runnable
{
  b(Activity paramActivity, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      a.a(this.a);
      a.a(c.a(this.a, this.b, false, null));
      if (a.a() != null)
        a.a().show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.b
 * JD-Core Version:    0.6.0
 */