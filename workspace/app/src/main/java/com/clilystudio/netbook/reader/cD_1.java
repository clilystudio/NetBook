package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class cD implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderWebActivity a;

    cD(ReaderWebActivity readerWebActivity) {
        this.a = readerWebActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        ReaderWebActivity.c(this.a);
    }
}
