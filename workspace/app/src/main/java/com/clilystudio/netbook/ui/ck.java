package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class ck implements View$OnClickListener {

    private SplashActivity a;

    ck(SplashActivity SplashActivity1) {
        a = SplashActivity1;
    }

    public final void onClick(View View1) {
        a.d();
        com.clilystudio.netbook.hpay100.a.a.o((Context) a, "SKIP");
    }
}
