package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aW
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    aW(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
