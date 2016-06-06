package com.clilystudio.app.netbook.pay.b;

import android.app.Activity;

import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.y;
import com.clilystudio.app.netbook.model.ChargePlan;
import com.clilystudio.app.netbook.model.YyfPayOrder;

import java.io.IOException;

public final class c extends com.clilystudio.app.netbook.a_packA.c<ChargePlan, YyfPayOrder> {
    public c(a parama, Activity paramActivity) {
        super(paramActivity);
    }

    private static YyfPayOrder a(ChargePlan[] paramArrayOfChargePlan) {
        String str = am_CommonUtils.e().getToken();
        try {
            com.clilystudio.app.netbook.api.b.a();
            YyfPayOrder localYyfPayOrder = com.clilystudio.app.netbook.api.b.b().c(str, paramArrayOfChargePlan[0].get_id());
            return localYyfPayOrder;
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
 * Qualified Name:     com.clilystudio.app.netbook.pay.b.c
 * JD-Core Version:    0.6.2
 */