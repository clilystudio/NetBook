package com.clilystudio.netbook.pay.b;

import android.app.Activity;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.YyfPayOrder;

import java.io.IOException;

public final class c extends com.clilystudio.netbook.a_pack.c<ChargePlan, YyfPayOrder> {
    public c(a parama, Activity paramActivity) {
        super(paramActivity);
    }

    private static YyfPayOrder a(ChargePlan[] paramArrayOfChargePlan) {
        String str = am.e().getToken();
        try {
            com.clilystudio.netbook.api.b.a();
            YyfPayOrder localYyfPayOrder = com.clilystudio.netbook.api.b.b().c(str, paramArrayOfChargePlan[0].get_id());
            return localYyfPayOrder;
        } catch (IOException localIOException) {
        }
        return null;
    }

    public final void onCancelled() {
        super.onCancelled();
        i.a().c(new y(false));
    }
}

