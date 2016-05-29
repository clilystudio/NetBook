package com.clilystudio.app.netbook.reader.txt;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.o
 * JD-Core Version:    0.6.2
 */