package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.widget.Toast;

final class g implements Runnable {

    private f a;

    g(f f1) {
        a = f1;
    }

    public final void run() {
        Toast.makeText((Context) f.b(a), com.alipay.sdk.b.b.h(f.a(a)), 0).show();
    }
}
