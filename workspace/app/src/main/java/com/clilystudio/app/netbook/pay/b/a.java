package com.clilystudio.app.netbook.pay.b;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ChargePlan;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.util.am_CommonUtils;

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
    if ((am_CommonUtils.e() != null) && (am_CommonUtils.e().getUser() != null))
    {
      User localUser = am_CommonUtils.e().getUser();
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.pay.b.a
 * JD-Core Version:    0.6.2
 */