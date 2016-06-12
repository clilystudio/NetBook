package com.clilystudio.netbook.hpay100.config;

import android.content.Context;

final class u implements Runnable {

    private Context a;     // final access specifier removed
    private String b;     // final access specifier removed
    u(Context Context1, String String2) {
        a = Context1;
        b = String2;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), b, null, false, 30000, 40000, true);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
