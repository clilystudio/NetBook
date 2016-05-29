package com.clilystudio.app.netbook.util.adutil;

import android.content.DialogInterface;

final class c
        implements DialogInterface.OnClickListener {
    c(b paramb) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        AdSplashImp.a(this.a.b, this.a.a);
        this.a.b.e();
        this.a.a.postDelayed(new d(this), 500L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.c
 * JD-Core Version:    0.6.2
 */