package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aQ
        implements DialogInterface.OnDismissListener {
    aQ(ReaderActivity paramReaderActivity) {
    }

    public final void onDismiss(DialogInterface paramDialogInterface) {
        ReaderActivity.e(this.a, false);
    }
}

