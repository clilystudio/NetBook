package com.clilystudio.netbook.util;

import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;

final class ap extends Thread
{
  ap(String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().e(am.e().getToken(), this.a, this.b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.ap
 * JD-Core Version:    0.6.0
 */