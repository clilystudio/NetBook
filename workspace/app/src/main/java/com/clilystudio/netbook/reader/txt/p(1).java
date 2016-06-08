package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class p
        implements DialogInterface.OnClickListener {
    p(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderTxtActivity.J(this.a);
    }
}

