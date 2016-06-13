package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;

final class bd
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    bd(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        dialogInterface.dismiss();
        i.a().c(new d(ReaderActivity.M(this.a), 3));
    }
}
