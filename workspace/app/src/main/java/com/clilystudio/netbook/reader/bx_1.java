package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bx implements DialogInterface.OnClickListener {
    private /* synthetic */ bw a;

    bx(bw bw2) {
        this.a = bw2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        ReaderMenuFragment.a(this.a.c, this.a.a, this.a.b);
    }
}
