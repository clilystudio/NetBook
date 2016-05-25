package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.DeleteResult;

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
      DeleteResult localDeleteResult = b.b().e(ChargeActivity.c(this.a), am_CommonUtils.e().getToken());
      return localDeleteResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.i
 * JD-Core Version:    0.6.2
 */