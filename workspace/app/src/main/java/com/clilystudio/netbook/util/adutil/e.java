package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;

final class e
        implements DialogInterface.OnClickListener {
    private /* synthetic */ b a;

    e(b b2) {
        this.a = b2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        AdSplashImp.a(this.a.b).d();
    }
}
