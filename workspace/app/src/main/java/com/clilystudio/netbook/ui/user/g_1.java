package com.clilystudio.netbook.ui.user;

import android.content.Intent;

import com.clilystudio.netbook.ui.aa;

final class g implements aa {
    private /* synthetic */ ChargeActivity a;

    g(ChargeActivity chargeActivity) {
        this.a = chargeActivity;
    }

    @Override
    public final void a() {
        Intent intent = new Intent(this.a, ChargeHelperActivity.class);
        this.a.startActivity(intent);
    }
}
