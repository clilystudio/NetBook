package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class cD implements DialogInterface$OnClickListener {

    private ReaderWebActivity a;

    cD(ReaderWebActivity ReaderWebActivity1) {
        a = ReaderWebActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        ReaderWebActivity.c(a);
    }
}
