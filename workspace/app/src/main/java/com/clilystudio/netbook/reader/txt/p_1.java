package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class p
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderTxtActivity a;

    p(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        ReaderTxtActivity.J(this.a);
    }
}
