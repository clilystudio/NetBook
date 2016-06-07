package com.ushaqi.zhuishushenqi.util;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;

final class aq extends Thread
{
  aq(String paramString1, String paramString2, String paramString3)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().b(am.e().getToken(), this.a, this.b, this.c);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.aq
 * JD-Core Version:    0.6.0
 */