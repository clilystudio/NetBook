package com.clilystudio.app.netbook.pay.weixin;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.y;
import com.clilystudio.app.netbook.model.ChargePlan;
import com.clilystudio.app.netbook.model.WXPayOrder;

import java.io.IOException;

public final class b extends c<ChargePlan, WXPayOrder> {
    public b(a parama, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private static WXPayOrder a(ChargePlan[] paramArrayOfChargePlan) {
        String str = am_CommonUtils.e().getToken();
        try {
            com.clilystudio.app.netbook.api.b.a();
            WXPayOrder localWXPayOrder = com.clilystudio.app.netbook.api.b.b().b(str, paramArrayOfChargePlan[0].get_id());
            return localWXPayOrder;
        } catch (IOException localIOException) {
        }
        return null;
    }

    public final void onCancelled() {
        super.onCancelled();
        i_OttoBus.a().c(new y(false));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.pay.weixin.b
 * JD-Core Version:    0.6.2
 */