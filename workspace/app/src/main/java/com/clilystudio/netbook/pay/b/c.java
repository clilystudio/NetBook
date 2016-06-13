package com.clilystudio.netbook.pay.b;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.YyfPayOrder;
import com.clilystudio.netbook.model.YyfPayOrder$PayOrder;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

public final class c
        extends com.clilystudio.netbook.a.c<ChargePlan, YyfPayOrder> {
    private /* synthetic */ a a;

    public c(a a2, Activity activity) {
        this.a = a2;
        super(activity);
    }

    private static /* varargs */ YyfPayOrder a(ChargePlan... arrchargePlan) {
        String string = am.e().getToken();
        try {
            com.clilystudio.netbook.api.b.a();
            YyfPayOrder yyfPayOrder = com.clilystudio.netbook.api.b.b().c(string, arrchargePlan[0].get_id());
            return yyfPayOrder;
        } catch (IOException var2_3) {
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        YyfPayOrder yyfPayOrder = (YyfPayOrder) object;
        if (yyfPayOrder != null && yyfPayOrder.isOk()) {
            YyfPayOrder$PayOrder yyfPayOrder$PayOrder = yyfPayOrder.getPayOrder();
            try {
                com.clilystudio.netbook.hpay100.a.a((Activity) a.a(this.a), 0, yyfPayOrder.getOrderId(), yyfPayOrder$PayOrder.getSpPayCode(), yyfPayOrder$PayOrder.getAmount(), yyfPayOrder$PayOrder.getPayName(), new b(this.a, 0));
                i.a().c(new z(yyfPayOrder.getOrderId()));
                return;
            } catch (Exception var4_4) {
                i.a().c(new y(false));
                e.a((Context) a.a(this.a), (String) "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01");
                return;
            }
        }
        i.a().c(new y(false));
        e.a((Context) a.a(this.a), (String) "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01");
    }

    @Override
    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new y(false));
    }
}
