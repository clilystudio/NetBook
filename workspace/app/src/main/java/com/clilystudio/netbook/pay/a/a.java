package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

import com.clilystudio.netbook.model.ChargePlan;

public final class a {
    private Context a;
    private Handler b;

    public a(Context context) {
        this.b = new b(this);
        this.a = context;
    }

    static /* synthetic */ Context a(a a2) {
        return a2.a;
    }

    static /* synthetic */ Handler b(a a2) {
        return a2.b;
    }

    public final void a(ChargePlan chargePlan) {
        new c(this, (Activity) this.a).b(chargePlan);
    }
}
