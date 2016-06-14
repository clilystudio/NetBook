package com.clilystudio.netbook.pay.b;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.User;

public final class a {
    static {
        System.loadLibrary("mgpbase");
    }

    private Context a;

    public a(Context context) {
        this.a = context;
        com.clilystudio.netbook.hpay100.a.a((Activity) context, "2000048", "35ea1842762811e5a076be3c3fd80617", "test_channel", "\u8ffd\u4e66\u795e\u5668", "4006502098");
        String string = "";
        String string2 = "";
        if (am.e() != null && am.e().getUser() != null) {
            User user = am.e().getUser();
            string = user.getId();
            string2 = "" + user.getLv();
        }
        com.clilystudio.netbook.hpay100.a.a(string, "", string2);
    }

    static /* synthetic */ Context a(a a2) {
        return a2.a;
    }

    public final void a(ChargePlan chargePlan) {
        new c(this, (Activity) this.a).b(chargePlan);
    }
}
