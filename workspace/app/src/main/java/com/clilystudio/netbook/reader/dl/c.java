package com.clilystudio.netbook.reader.dl;

import android.content.DialogInterface;

final class c implements DialogInterface.OnClickListener {
    private /* synthetic */ d a;

    c(a a2, d d2) {
        this.a = d2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        this.a.a();
    }
}
