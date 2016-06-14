package com.clilystudio.netbook.a_pack;

import android.content.DialogInterface;

final class d
        implements DialogInterface.OnCancelListener {
    private /* synthetic */ c a;

    d(c c2) {
        this.a = c2;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.cancel(true);
    }
}
