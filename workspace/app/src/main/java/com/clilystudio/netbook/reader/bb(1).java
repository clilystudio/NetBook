package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bb
        implements DialogInterface.OnClickListener {
    bb(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderActivity.ag(this.a);
    }
}

