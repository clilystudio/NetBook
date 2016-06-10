package com.clilystudio.netbook.pay.b;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.User;

public final class a {
    static {
        System.loadLibrary("mgpbase");
    }

    private Context a;

    public a(Context paramContext) {
        this.a = paramContext;
        com.clilystudio.netbook.hpay100.a.a((Activity) paramContext, "2000048", "35ea1842762811e5a076be3c3fd80617", "test_channel", "追书神器", "4006502098");
        String str1 = "";
        String str2 = "";
        if ((am.e() != null) && (am.e().getUser() != null)) {
            User localUser = am.e().getUser();
            str1 = localUser.getId();
            str2 = localUser.getLv();
        }
        com.clilystudio.netbook.hpay100.a.a(str1, "", str2);
    }

    public final void a(ChargePlan paramChargePlan) {
        new c(this, (Activity) this.a).b(new ChargePlan[]{paramChargePlan});
    }
}

