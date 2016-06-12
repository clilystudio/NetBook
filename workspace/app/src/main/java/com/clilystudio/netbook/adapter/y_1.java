package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.user.ChargeActivity;

final class y implements View$OnClickListener {

    private ChargePlan a;
    private x b;
    y(x x1, ChargePlan ChargePlan2) {
        b = x1;
        a = ChargePlan2;
    }

    public final void onClick(View View1) {
        if (x.a(b) instanceof ChargeActivity)
            ((ChargeActivity) x.a(b)).a(a);
    }
}
