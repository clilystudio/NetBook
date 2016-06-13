package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class p
        implements DialogInterface.OnCancelListener {
    private /* synthetic */ ReaderRandomActivity a;

    p(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
