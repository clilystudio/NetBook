package com.ushaqi.zhuishushenqi.pay.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.ushaqi.zhuishushenqi.model.ChargePlan;

public final class a
{
  private Context a;
  private Handler b = new b(this);

  public a(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(ChargePlan paramChargePlan)
  {
    new c(this, (Activity)this.a).b(new ChargePlan[] { paramChargePlan });
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.a.a
 * JD-Core Version:    0.6.0
 */