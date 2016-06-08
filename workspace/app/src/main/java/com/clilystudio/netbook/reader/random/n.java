package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;

final class n
        implements DialogInterface.OnClickListener {
    n(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderRandomActivity.t(this.a);
    }
}

