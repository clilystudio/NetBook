package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.AliPayOrder;
import com.clilystudio.netbook.model.ChargePlan;

import java.io.IOException;

public final class c extends com.clilystudio.netbook.a.c {

    a a;     // final access specifier removed

    public c(a a1, Activity Activity2) {
        super(Activity2);
        a = a1;
    }

    private static transient AliPayOrder a(ChargePlan[] ChargePlan_1darray1) {
        String String2 = am.e().getToken();
        AliPayOrder AliPayOrder5;

        try {
            com.clilystudio.netbook.api.b.a();
            AliPayOrder5 = com.clilystudio.netbook.api.b.b().d(String2, ChargePlan_1darray1[0].get_id());
        } catch (IOException IOException3) {
            return null;
        }
        return AliPayOrder5;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((ChargePlan[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        AliPayOrder AliPayOrder2 = (AliPayOrder) Object1;

        if (AliPayOrder2 != null && AliPayOrder2.isOk() && AliPayOrder2.getPayOrder() != null) {
            new Thread((Runnable) new d(this, AliPayOrder2)).start();
            i.a().c(new z(AliPayOrder2.getOrderId()));
        } else {
            i.a().c(new y(false));
            com.clilystudio.netbook.util.e.a(a.a(a), "\u53D1\u8D77\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u6216\u68C0\u67E5\u7F51\u7EDC\uFF01");
        }
    }

    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new y(false));
    }
}
