package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class s implements DialogInterface$OnClickListener {

    private ReaderTxtActivity a;

    s(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        ReaderTxtActivity.e(a, int2);
        ReaderTxtActivity.K(a).dismiss();
    }
}
