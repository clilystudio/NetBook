package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

final class aQ implements DialogInterface$OnDismissListener {

    private ReaderActivity a;

    aQ(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onDismiss(DialogInterface DialogInterface1) {
        ReaderActivity.e(a, false);
    }
}
