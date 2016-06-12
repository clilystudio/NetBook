package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class aP implements DialogInterface$OnCancelListener {

    private ReaderActivity a;

    aP(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onCancel(DialogInterface DialogInterface1) {
        if (ReaderActivity.O(a) && !com.clilystudio.netbook.reader.ReaderActivity.ac(a))
            a.finish();
    }
}
