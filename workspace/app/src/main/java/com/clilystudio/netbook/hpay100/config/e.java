package com.clilystudio.netbook.hpay100.config;

import android.content.Context;

final class e implements Runnable {

    private Context a;     // final access specifier removed

    e(Context Context1) {
        a = Context1;
    }

    public final void run() {
        c.b(a);
    }
}
