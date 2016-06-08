package com.clilystudio.netbook.util.adutil;

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

