package com.clilystudio.netbook.ui.user;

import android.support.design.widget.am;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.DeleteResult;

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
 * Qualified Name:     com.clilystudio.netbook.ui.user.i
 * JD-Core Version:    0.6.0
 */