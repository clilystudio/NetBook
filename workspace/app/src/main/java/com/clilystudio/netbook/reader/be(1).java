package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class be
        implements DialogInterface.OnClickListener {
    be(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

