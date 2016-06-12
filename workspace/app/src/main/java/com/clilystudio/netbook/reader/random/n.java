package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class n implements DialogInterface$OnClickListener {

    private ReaderRandomActivity a;

    n(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        ReaderRandomActivity.t(a);
    }
}
