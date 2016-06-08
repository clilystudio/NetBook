package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aX
        implements DialogInterface.OnClickListener {
    aX(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderActivity.ad(this.a);
        this.a.finish();
    }
}

