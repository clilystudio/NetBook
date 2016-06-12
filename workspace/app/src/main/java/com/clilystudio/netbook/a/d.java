package com.clilystudio.netbook.a;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class d implements DialogInterface$OnCancelListener {

    private c a;

    d(c c1) {
        a = c1;
    }

    public final void onCancel(DialogInterface DialogInterface1) {
        a.cancel(true);
    }
}
