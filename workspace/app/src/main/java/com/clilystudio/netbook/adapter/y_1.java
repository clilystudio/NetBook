package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.user.ChargeActivity;

final class y implements View.OnClickListener {
    private /* synthetic */ ChargePlan a;
    private /* synthetic */ x b;

    y(x x2, ChargePlan chargePlan) {
        this.b = x2;
        this.a = chargePlan;
    }

    @Override
    public final void onClick(View view) {
        if (x.a(this.b) instanceof ChargeActivity) {
            ((ChargeActivity) x.a(this.b)).a(this.a);
        }
    }
}
