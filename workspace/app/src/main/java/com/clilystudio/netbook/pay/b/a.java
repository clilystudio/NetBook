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

    public a(Context Context1) {
        String String2;
        String String3;

        a = Context1;
        com.clilystudio.netbook.hpay100.a.a((Activity) Context1, "2000048", "35ea1842762811e5a076be3c3fd80617", "test_channel", "\u8FFD\u4E66\u795E\u5668", "4006502098");
        String2 = "";
        String3 = "";
        if (am.e() != null && am.e().getUser() != null) {
            User User4 = am.e().getUser();

            String2 = User4.getId();
            String3 = new StringBuilder().append(User4.getLv()).toString();
        }
        com.clilystudio.netbook.hpay100.a.a(String2, "", String3);
    }

    static Context a(a a1) {
        return a1.a;
    }

    public final void a(ChargePlan ChargePlan1) {
        new c(this, (Activity) a).b(new ChargePlan[]{ChargePlan1});
    }
}
