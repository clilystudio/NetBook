package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class b implements DialogInterface.OnClickListener {
    b(ReaderTxtActivity readerTxtActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
