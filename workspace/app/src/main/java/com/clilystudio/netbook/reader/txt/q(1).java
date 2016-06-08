package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class q
        implements DialogInterface.OnCancelListener {
    q(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onCancel(DialogInterface paramDialogInterface) {
        this.a.finish();
    }
}

