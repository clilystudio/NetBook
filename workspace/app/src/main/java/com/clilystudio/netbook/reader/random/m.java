package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class m
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    m(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
