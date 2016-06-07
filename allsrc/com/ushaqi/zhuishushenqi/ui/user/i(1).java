package com.ushaqi.zhuishushenqi.ui.user;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.DeleteResult;

final class i extends e<Void, Void, DeleteResult>
{
  private i(ChargeActivity paramChargeActivity)
  {
  }

  private DeleteResult a()
  {
    try
    {
      b.a();
      DeleteResult localDeleteResult = b.b().e(ChargeActivity.c(this.a), am.e().getToken());
      return localDeleteResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.i
 * JD-Core Version:    0.6.0
 */