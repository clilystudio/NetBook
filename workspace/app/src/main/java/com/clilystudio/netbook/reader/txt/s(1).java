package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class s
        implements DialogInterface.OnClickListener {
    s(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        ReaderTxtActivity.e(this.a, paramInt);
        ReaderTxtActivity.K(this.a).dismiss();
    }
}

