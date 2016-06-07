package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;

final class am extends Thread
{
  am(Account paramAccount, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().x(this.a.getToken(), this.b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.am
 * JD-Core Version:    0.6.0
 */