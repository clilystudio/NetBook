package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class c implements DialogInterface$OnClickListener {

    b a;     // final access specifier removed

    c(b b1) {
        a = b1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        AdSplashImp.a(a.b, a.a);
        a.b.e();
        a.a.postDelayed((Runnable) new d(this), 500L);
    }
}
