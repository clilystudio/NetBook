package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aQ implements DialogInterface.OnDismissListener {
    private /* synthetic */ ReaderActivity a;

    aQ(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onDismiss(DialogInterface dialogInterface) {
        ReaderActivity.e(this.a, false);
    }
}
