package com.clilystudio.netbook.ui;

import android.view.View;

final class ck
        implements View.OnClickListener {
    private /* synthetic */ SplashActivity a;

    ck(SplashActivity splashActivity) {
        this.a = splashActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.d();
        a.o(this.a, "SKIP");
    }
}
