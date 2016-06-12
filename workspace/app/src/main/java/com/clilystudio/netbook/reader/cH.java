package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class cH implements DialogInterface$OnClickListener {

    private ReaderWebActivity a;

    cH(ReaderWebActivity ReaderWebActivity1) {
        a = ReaderWebActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        ReaderWebActivity.b(a);
    }
}
