package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aO
        implements DialogInterface.OnClickListener {
    aO(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        ReaderActivity.h(this.a, paramInt);
        ReaderActivity.ab(this.a).dismiss();
    }
}

