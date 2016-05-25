package com.clilystudio.app.netbook.pay.a;

import android.app.Activity;

import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.y;
import com.clilystudio.app.netbook.model.AliPayOrder;
import com.clilystudio.app.netbook.model.ChargePlan;

import java.io.IOException;

public final class c extends com.clilystudio.app.netbook.a_packA.c<ChargePlan, AliPayOrder>
{
  public c(a parama, Activity paramActivity)
  {
    super(paramActivity);
  }

  private static AliPayOrder a(ChargePlan[] paramArrayOfChargePlan)
  {
    String str = am_CommonUtils.e().getToken();
    try
    {
      com.clilystudio.app.netbook.api.b.a();
      AliPayOrder localAliPayOrder = com.clilystudio.app.netbook.api.b.b().d(str, paramArrayOfChargePlan[0].get_id());
      return localAliPayOrder;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final void onCancelled()
  {
    super.onCancelled();
    i.a().c(new y(false));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.pay.a.c
 * JD-Core Version:    0.6.2
 */