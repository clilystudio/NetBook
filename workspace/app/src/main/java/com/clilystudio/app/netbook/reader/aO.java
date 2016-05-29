package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;

final class aO
        implements DialogInterface.OnClickListener {
    aO(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        ReaderActivity.h(this.a, paramInt);
        ReaderActivity.ab(this.a).dismiss();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aO
 * JD-Core Version:    0.6.2
 */