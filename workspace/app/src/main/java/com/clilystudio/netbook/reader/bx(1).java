package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bx
        implements DialogInterface.OnClickListener {
    bx(bw parambw) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderMenuFragment.a(this.a.c, this.a.a, this.a.b);
    }
}

