package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

import com.clilystudio.netbook.model.ChargePlan;

public final class a {
    private Context a;
    private Handler b = new b(this);

    public a(Context paramContext) {
        this.a = paramContext;
    }

    public final void a(ChargePlan paramChargePlan) {
        new c(this, (Activity) this.a).b(new ChargePlan[]{paramChargePlan});
    }
}

