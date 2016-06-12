package com.clilystudio.netbook.hpay100.c;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class o implements DialogInterface$OnClickListener {

    private DialogInterface$OnClickListener a;     // final access specifier removed

    o(DialogInterface$OnClickListener OnClickListener1) {
        a = OnClickListener1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (a != null) {
            DialogInterface1.dismiss();
            a.onClick(DialogInterface1, int2);
        } else
            DialogInterface1.dismiss();
    }
}
