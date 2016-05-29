package com.clilystudio.app.netbook.reader.txt;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.s
 * JD-Core Version:    0.6.2
 */