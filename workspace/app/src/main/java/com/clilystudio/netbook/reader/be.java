package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class be implements DialogInterface.OnClickListener {
    be(ReaderActivity readerActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
