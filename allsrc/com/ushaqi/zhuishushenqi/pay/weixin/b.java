package com.ushaqi.zhuishushenqi.pay.weixin;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.y;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChargePlan;
import com.ushaqi.zhuishushenqi.model.WXPayOrder;
import java.io.IOException;

public final class b extends c<ChargePlan, WXPayOrder>
{
  public b(a parama, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private static WXPayOrder a(ChargePlan[] paramArrayOfChargePlan)
  {
    String str = am.e().getToken();
    try
    {
      com.ushaqi.zhuishushenqi.api.b.a();
      WXPayOrder localWXPayOrder = com.ushaqi.zhuishushenqi.api.b.b().b(str, paramArrayOfChargePlan[0].get_id());
      return localWXPayOrder;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.weixin.b
 * JD-Core Version:    0.6.0
 */