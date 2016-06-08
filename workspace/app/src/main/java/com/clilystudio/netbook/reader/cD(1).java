package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class cD
        implements DialogInterface.OnClickListener {
    cD(ReaderWebActivity paramReaderWebActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        ReaderWebActivity.c(this.a);
    }
}

