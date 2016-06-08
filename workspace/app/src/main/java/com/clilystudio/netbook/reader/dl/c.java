package com.clilystudio.netbook.reader.dl;

import android.content.DialogInterface;

final class c
        implements DialogInterface.OnClickListener {
    c(a parama, d paramd) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.a();
    }
}

