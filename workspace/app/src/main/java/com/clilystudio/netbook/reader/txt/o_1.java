package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class o implements DialogInterface$OnClickListener {

    private ReaderTxtActivity a;

    o(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.finish();
    }
}
