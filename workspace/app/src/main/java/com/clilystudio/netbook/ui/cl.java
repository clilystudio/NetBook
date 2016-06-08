package com.clilystudio.netbook.ui;

import android.util.Log;

final class cl {
    private boolean a = false;

    cl(SplashActivity paramSplashActivity) {
    }

    public final void a() {
        this.a = true;
        Log.i(SplashActivity.e(), "cancelClose:" + this);
    }

    final void a(long paramLong) {
        if ((!this.a) && (!SplashActivity.a(this.b))) {
            this.b.d();
            SplashActivity.a(this.b, true);
            Log.i(SplashActivity.e(), "....." + paramLong + "," + this.a + ": " + this);
        }
    }
}

