package com.clilystudio.app.netbook.util.adutil;

import android.content.DialogInterface;

final class e
        implements DialogInterface.OnClickListener {
    e(b paramb) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        AdSplashImp.a(this.a.b).d();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.e
 * JD-Core Version:    0.6.2
 */