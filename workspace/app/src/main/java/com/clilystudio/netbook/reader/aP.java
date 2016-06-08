package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class aP
        implements DialogInterface.OnCancelListener {
    aP(ReaderActivity paramReaderActivity) {
    }

    public final void onCancel(DialogInterface paramDialogInterface) {
        if ((ReaderActivity.O(this.a)) && (!ReaderActivity.ac(this.a)))
            this.a.finish();
    }
}

