package com.clilystudio.app.netbook.util;

import android.support.design.widget.am;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;

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
      b.b().e(am_CommonUtils.e().getToken(), this.a, this.b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.ap
 * JD-Core Version:    0.6.2
 */