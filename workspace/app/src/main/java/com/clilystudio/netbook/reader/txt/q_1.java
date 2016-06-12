package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class q implements DialogInterface$OnCancelListener {

    private ReaderTxtActivity a;

    q(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void onCancel(DialogInterface DialogInterface1) {
        a.finish();
    }
}
