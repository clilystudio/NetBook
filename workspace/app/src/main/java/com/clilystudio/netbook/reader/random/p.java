package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class p
        implements DialogInterface.OnCancelListener {
    p(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onCancel(DialogInterface paramDialogInterface) {
        this.a.finish();
    }
}

