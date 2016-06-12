package com.clilystudio.netbook.ui;

import android.util.Log;

final class cl {

    private boolean a;
    private SplashActivity b;
    cl(SplashActivity SplashActivity1) {
        b = SplashActivity1;
        a = false;
    }

    public final void a() {
        a = true;
        Log.i(SplashActivity.e(), new StringBuilder("cancelClose:").append(this).toString());
    }

    final void a(long long1) {
        if (!a && !com.clilystudio.netbook.ui.SplashActivity.a(b)) {
            b.d();
            SplashActivity.a(b, true);
            Log.i(SplashActivity.e(), new StringBuilder(".....").append(long1).append(",").append(a).append(": ").append(this).toString());
        }
    }
}
