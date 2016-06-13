package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aP
        implements DialogInterface.OnCancelListener {
    private /* synthetic */ ReaderActivity a;

    aP(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        if (ReaderActivity.O(this.a) && !ReaderActivity.ac(this.a)) {
            this.a.finish();
        }
    }
}
