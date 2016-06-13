package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;

final class bv
        implements DialogInterface.OnClickListener {
    private /* synthetic */ View a;
    private /* synthetic */ bt b;

    bv(bt bt2, View view) {
        this.b = bt2;
        this.a = view;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        ReaderMenuFragment.j(this.b.a).onAdClick(this.a);
        ReaderMenuFragment.j(this.b.a).recordClick(this.a);
    }
}
