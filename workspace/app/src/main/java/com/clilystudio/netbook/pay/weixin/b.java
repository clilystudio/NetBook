package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.WXPayOrder;

import java.io.IOException;

public final class b extends c<ChargePlan, WXPayOrder> {
    public b(a parama, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private static WXPayOrder a(ChargePlan[] paramArrayOfChargePlan) {
        String str = am.e().getToken();
        try {
            com.clilystudio.netbook.api.b.a();
            WXPayOrder localWXPayOrder = com.clilystudio.netbook.api.b.b().b(str, paramArrayOfChargePlan[0].get_id());
            return localWXPayOrder;
        } catch (IOException localIOException) {
        }
        return null;
    }

    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new y(false));
    }
}

