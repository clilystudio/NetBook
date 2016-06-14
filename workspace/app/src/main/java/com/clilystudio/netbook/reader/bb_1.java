package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bb implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    bb(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        ReaderActivity.ag(this.a);
    }
}
