package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.ChargePlan;
import com.e.a.a.g.c;

public final class a {
    final com.e.a.a.g.a a;
    private Context b;

    public a(Context paramContext) {
        this.b = paramContext;
        this.a = c.a(paramContext, null);
    }

    public static boolean a(Context paramContext) {
        com.e.a.a.g.a locala = c.a(paramContext, "");
        return (locala.a()) && (locala.b());
    }

    public final void a(ChargePlan paramChargePlan) {
        new b(this, (Activity) this.b, "正在发起微信支付").b(new ChargePlan[]{paramChargePlan});
    }
}
