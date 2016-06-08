package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;

final class bv
        implements DialogInterface.OnClickListener {
    bv(bt parambt, View paramView) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        ReaderMenuFragment.j(this.b.a).onAdClick(this.a);
        ReaderMenuFragment.j(this.b.a).recordClick(this.a);
    }
}

