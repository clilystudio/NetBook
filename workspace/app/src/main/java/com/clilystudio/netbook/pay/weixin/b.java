package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.WXPayOrder;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

public final class b extends c<ChargePlan, WXPayOrder> {
    private /* synthetic */ a a;

    public b(a a2, Activity activity, String string) {
        this.a = a2;
        super(activity, string);
    }

    private static /* varargs */ WXPayOrder a(ChargePlan... arrchargePlan) {
        String string = am.e().getToken();
        try {
            com.clilystudio.netbook.api.b.a();
            WXPayOrder wXPayOrder = com.clilystudio.netbook.api.b.b().b(string, arrchargePlan[0].get_id());
            return wXPayOrder;
        } catch (IOException var2_3) {
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        WXPayOrder wXPayOrder = (WXPayOrder) object;
        if (wXPayOrder != null && wXPayOrder.isOk()) {
            com.e.a.a.f.a a2 = new com.e.a.a.f.a();
            WXPayOrder$PayOrder wXPayOrder$PayOrder = wXPayOrder.getPayOrder();
            a2.a = wXPayOrder$PayOrder.getAppid();
            a2.b = wXPayOrder$PayOrder.getPartnerid();
            a2.c = wXPayOrder$PayOrder.getPrepayid();
            a2.f = wXPayOrder$PayOrder.getXpackage();
            a2.d = wXPayOrder$PayOrder.getNoncestr();
            a2.e = wXPayOrder$PayOrder.getTimestamp();
            a2.g = wXPayOrder$PayOrder.getSign();
            a a3 = this.a;
            String string = wXPayOrder$PayOrder.getAppid();
            a3.a.a(string);
            a3.a.a(a2);
            i.a().c(new z(wXPayOrder.getOrderId()));
            return;
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
