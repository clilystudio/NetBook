package com.ushaqi.zhuishushenqi.pay.b;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.y;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChargePlan;
import com.ushaqi.zhuishushenqi.model.YyfPayOrder;
import java.io.IOException;

public final class c extends com.ushaqi.zhuishushenqi.a.c<ChargePlan, YyfPayOrder>
{
  public c(a parama, Activity paramActivity)
  {
    super(paramActivity);
  }

  private static YyfPayOrder a(ChargePlan[] paramArrayOfChargePlan)
  {
    String str = am.e().getToken();
    try
    {
      com.ushaqi.zhuishushenqi.api.b.a();
      YyfPayOrder localYyfPayOrder = com.ushaqi.zhuishushenqi.api.b.b().c(str, paramArrayOfChargePlan[0].get_id());
      return localYyfPayOrder;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.b.c
 * JD-Core Version:    0.6.0
 */