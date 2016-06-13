package com.clilystudio.netbook.ui;

import android.util.Log;

final class cl {
    private boolean a;
    private /* synthetic */ SplashActivity b;

    cl(SplashActivity splashActivity) {
        this.b = splashActivity;
        this.a = false;
    }

    public final void a() {
        this.a = true;
        Log.i(SplashActivity.e(), "cancelClose:" + this);
    }

    final void a(long l) {
        if (!this.a && !SplashActivity.a(this.b)) {
            this.b.d();
            SplashActivity.a(this.b, true);
            Log.i(SplashActivity.e(), "....." + l + "," + this.a + ": " + this);
        }
    }
}
