package com.clilystudio.netbook.pay.b;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.YyfPayOrder;
import com.clilystudio.netbook.model.YyfPayOrder$PayOrder;

import java.io.IOException;

public final class c extends com.clilystudio.netbook.a.c {

    private a a;

    public c(a a1, Activity Activity2) {
        super(Activity2);
        a = a1;
    }

    private static transient YyfPayOrder a(ChargePlan[] ChargePlan_1darray1) {
        String String2 = am.e().getToken();
        YyfPayOrder YyfPayOrder5;

        try {
            com.clilystudio.netbook.api.b.a();
            YyfPayOrder5 = com.clilystudio.netbook.api.b.b().c(String2, ChargePlan_1darray1[0].get_id());
        } catch (IOException IOException3) {
            return null;
        }
        return YyfPayOrder5;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((ChargePlan[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        YyfPayOrder YyfPayOrder2 = (YyfPayOrder) Object1;

        if (YyfPayOrder2 != null && YyfPayOrder2.isOk()) {
            YyfPayOrder$PayOrder PayOrder3 = YyfPayOrder2.getPayOrder();

            try {
                com.clilystudio.netbook.hpay100.a.a((Activity) a.a(a), 0, YyfPayOrder2.getOrderId(), PayOrder3.getSpPayCode(), PayOrder3.getAmount(), PayOrder3.getPayName(), (com.clilystudio.netbook.hpay100.y) new b(a, (byte) 0));
                i.a().c(new z(YyfPayOrder2.getOrderId()));
            } catch (Exception Exception4) {
                i.a().c(new com.clilystudio.netbook.event.y(false));
                com.clilystudio.netbook.util.e.a(a.a(a), "\u53D1\u8D77\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u6216\u68C0\u67E5\u7F51\u7EDC\uFF01");
                return;
            }
        } else {
            i.a().c(new com.clilystudio.netbook.event.y(false));
            com.clilystudio.netbook.util.e.a(a.a(a), "\u53D1\u8D77\u652F\u4ED8\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u6216\u68C0\u67E5\u7F51\u7EDC\uFF01");
        }
    }

    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new com.clilystudio.netbook.event.y(false));
    }
}
