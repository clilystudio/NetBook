package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aW
        implements DialogInterface.OnClickListener {
    aW(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

