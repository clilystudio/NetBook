package com.clilystudio.netbook.ui.user;

import android.content.Intent;

import com.clilystudio.netbook.ui.aa;

final class g
        implements aa {
    g(ChargeActivity paramChargeActivity) {
    }

    public final void a() {
        Intent localIntent = new Intent(this.a, ChargeHelperActivity.class);
        this.a.startActivity(localIntent);
    }
}

