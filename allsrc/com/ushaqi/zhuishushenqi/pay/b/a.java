package com.ushaqi.zhuishushenqi.pay.b;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChargePlan;
import com.ushaqi.zhuishushenqi.model.User;

public final class a
{
  private Context a;

  static
  {
    System.loadLibrary("mgpbase");
  }

  public a(Context paramContext)
  {
    this.a = paramContext;
    com.arcsoft.hpay100.a.a((Activity)paramContext, "2000048", "35ea1842762811e5a076be3c3fd80617", "test_channel", "追书神器", "4006502098");
    String str1 = "";
    String str2 = "";
    if ((am.e() != null) && (am.e().getUser() != null))
    {
      User localUser = am.e().getUser();
      str1 = localUser.getId();
      str2 = localUser.getLv();
    }
    com.arcsoft.hpay100.a.a(str1, "", str2);
  }

  public final void a(ChargePlan paramChargePlan)
  {
    new c(this, (Activity)this.a).b(new ChargePlan[] { paramChargePlan });
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.b.a
 * JD-Core Version:    0.6.0
 */