package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class o
        implements DialogInterface.OnClickListener {
    o(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

