package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.user.ChargeActivity;

final class y
        implements View.OnClickListener {
    y(x paramx, ChargePlan paramChargePlan) {
    }

    public final void onClick(View paramView) {
        if ((x.a(this.b) instanceof ChargeActivity))
            ((ChargeActivity) x.a(this.b)).a(this.a);
    }
}

