package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;

final class bb
        implements DialogInterface.OnClickListener {
    bb(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderActivity.ag(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bb
 * JD-Core Version:    0.6.2
 */