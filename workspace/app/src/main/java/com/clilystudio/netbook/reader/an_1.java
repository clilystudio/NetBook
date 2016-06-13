package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class an
        implements DialogInterface.OnClickListener {
    an(ReaderActivity readerActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
