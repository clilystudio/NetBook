package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class bx implements DialogInterface$OnClickListener {

    private bw a;

    bx(bw bw1) {
        a = bw1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        ReaderMenuFragment.a(a.c, a.a, a.b);
    }
}
