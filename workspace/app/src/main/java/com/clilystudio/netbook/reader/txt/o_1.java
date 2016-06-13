package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class o
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderTxtActivity a;

    o(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
