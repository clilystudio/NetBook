package com.clilystudio.app.netbook.pay.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

import com.clilystudio.app.netbook.model.ChargePlan;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.pay.a.a
 * JD-Core Version:    0.6.2
 */