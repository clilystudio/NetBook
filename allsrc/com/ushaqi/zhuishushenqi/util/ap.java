package com.ushaqi.zhuishushenqi.util;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.ap
 * JD-Core Version:    0.6.0
 */