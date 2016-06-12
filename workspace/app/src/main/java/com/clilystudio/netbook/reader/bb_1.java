package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class bb implements DialogInterface$OnClickListener {

    private ReaderActivity a;

    bb(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        ReaderActivity.ag(a);
    }
}
