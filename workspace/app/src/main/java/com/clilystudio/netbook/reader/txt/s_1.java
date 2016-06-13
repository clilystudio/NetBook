package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class s
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderTxtActivity a;

    s(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        ReaderTxtActivity.e(this.a, n2);
        ReaderTxtActivity.K(this.a).dismiss();
    }
}
