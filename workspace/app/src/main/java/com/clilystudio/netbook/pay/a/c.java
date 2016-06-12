package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.model.AliPayOrder;
import com.clilystudio.netbook.model.ChargePlan;

import java.io.IOException;

public final class c extends com.clilystudio.netbook.a_pack.c<ChargePlan, AliPayOrder> {
    public c(a parama, Activity paramActivity) {
        super(paramActivity);
    }

    private static AliPayOrder a(ChargePlan[] paramArrayOfChargePlan) {
        String str = am.e().getToken();
        try {
            com.clilystudio.netbook.api.b.a();
            AliPayOrder localAliPayOrder = com.clilystudio.netbook.api.b.b().d(str, paramArrayOfChargePlan[0].get_id());
            return localAliPayOrder;
        } catch (IOException localIOException) {
        }
        return null;
    }

    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new y(false));
    }
}

