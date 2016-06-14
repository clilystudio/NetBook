package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;

final class c implements DialogInterface.OnClickListener {
    final /* synthetic */ b a;

    c(b b2) {
        this.a = b2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        AdSplashImp.a(this.a.b, this.a.a);
        this.a.b.e();
        this.a.a.postDelayed(new d(this), 500);
    }
}
