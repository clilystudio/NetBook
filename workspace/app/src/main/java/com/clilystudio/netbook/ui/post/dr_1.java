package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class dr
        implements DialogInterface.OnClickListener {
    private /* synthetic */ dq a;

    dr(dq dq2) {
        this.a = dq2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        switch (n) {
            default: {
                return;
            }
            case 0: {
                dq.a(this.a);
                return;
            }
            case 1:
        }
        dq.b(this.a);
    }
}
