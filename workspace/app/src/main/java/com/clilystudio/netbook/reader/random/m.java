package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class m
        implements DialogInterface.OnClickListener {
    m(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

