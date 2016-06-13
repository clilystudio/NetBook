package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.ChargePlan;
import com.e.a.a.g.c;

public final class a {
    final com.e.a.a.g.a a;
    private Context b;

    public a(Context context) {
        this.b = context;
        this.a = c.a(context, null);
    }

    static /* synthetic */ Context a(a a2) {
        return a2.b;
    }

    public static boolean a(Context context) {
        com.e.a.a.g.a a2 = c.a(context, "");
        if (a2.a() && a2.b()) {
            return true;
        }
        return false;
    }

    public final void a(ChargePlan chargePlan) {
        new b(this, (Activity) this.b, "\u6b63\u5728\u53d1\u8d77\u5fae\u4fe1\u652f\u4ed8").b(chargePlan);
    }
}
