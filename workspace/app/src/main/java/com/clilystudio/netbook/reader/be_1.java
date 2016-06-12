package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class be implements DialogInterface$OnClickListener {

    be(ReaderActivity ReaderActivity1) {
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
    }
}
