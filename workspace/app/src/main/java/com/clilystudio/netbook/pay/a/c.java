package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.AliPayOrder;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

public final class c
        extends com.clilystudio.netbook.a.c<ChargePlan, AliPayOrder> {
    final /* synthetic */ a a;

    public c(a a2, Activity activity) {
        this.a = a2;
        super(activity);
    }

    private static /* varargs */ AliPayOrder a(ChargePlan... arrchargePlan) {
        String string = am.e().getToken();
        try {
            b.a();
            AliPayOrder aliPayOrder = b.b().d(string, arrchargePlan[0].get_id());
            return aliPayOrder;
        } catch (IOException var2_3) {
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        AliPayOrder aliPayOrder = (AliPayOrder) object;
        if (aliPayOrder != null && aliPayOrder.isOk() && aliPayOrder.getPayOrder() != null) {
            new Thread(new d(this, aliPayOrder)).start();
            i.a().c(new z(aliPayOrder.getOrderId()));
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
