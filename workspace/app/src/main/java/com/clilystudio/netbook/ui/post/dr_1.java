package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class dr implements DialogInterface$OnClickListener {

    private dq a;

    dr(dq dq1) {
        a = dq1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        switch (int2) {
            default:
                return;
            case 0:
                dq.a(a);
                return;
            case 1:
                dq.b(a);
                return;
        }
    }
}
