package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class n implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    n(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        ReaderRandomActivity.t(this.a);
    }
}
