package com.clilystudio.netbook.reader.dl;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class c implements DialogInterface$OnClickListener {

    private d a;

    c(a a1, d d2) {
        a = d2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.a();
    }
}
