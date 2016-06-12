package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class p implements DialogInterface$OnCancelListener {

    private ReaderRandomActivity a;

    p(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void onCancel(DialogInterface DialogInterface1) {
        a.finish();
    }
}
