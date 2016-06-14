package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class cH implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderWebActivity a;

    cH(ReaderWebActivity readerWebActivity) {
        this.a = readerWebActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        ReaderWebActivity.b(this.a);
    }
}
