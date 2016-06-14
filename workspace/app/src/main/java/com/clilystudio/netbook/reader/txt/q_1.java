package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;

final class q implements DialogInterface.OnCancelListener {
    private /* synthetic */ ReaderTxtActivity a;

    q(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
