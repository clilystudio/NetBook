package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aX
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    aX(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        ReaderActivity.ad(this.a);
        this.a.finish();
    }
}
