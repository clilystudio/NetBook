package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class aO implements DialogInterface$OnClickListener {

    private ReaderActivity a;

    aO(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        ReaderActivity.h(a, int2);
        ReaderActivity.ab(a).dismiss();
    }
}
