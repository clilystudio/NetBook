package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aO implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    aO(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        ReaderActivity.h(this.a, n2);
        ReaderActivity.ab(this.a).dismiss();
    }
}
