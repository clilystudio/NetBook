package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class P implements DialogInterface$OnClickListener {

    P(N N1) {
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
    }
}
