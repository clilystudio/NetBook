package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class e implements DialogInterface$OnClickListener {

    private b a;

    e(b b1) {
        a = b1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        AdSplashImp.a(a.b).d();
    }
}
