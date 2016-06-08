package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;

final class bd
        implements DialogInterface.OnClickListener {
    bd(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        i.a().c(new d(ReaderActivity.M(this.a), 3));
    }
}

