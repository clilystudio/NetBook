package com.clilystudio.app.netbook.reader;

import android.app.AlertDialog;
import android.view.View;

import com.arcsoft.hpay100.a.a;

final class bP
        implements View.OnClickListener {
    bP(ReaderOptionActivity paramReaderOptionActivity, AlertDialog paramAlertDialog, int paramInt) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        if (ReaderOptionActivity.b(this.c) != this.b) {
            ReaderOptionActivity.a(this.c, this.b);
            ReaderOptionActivity.d(this.c).setText(ReaderOptionActivity.c(this.c)[this.b]);
            a.b(this.c, "reader_screen_off_time", ReaderOptionActivity.e(this.c)[this.b]);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bP
 * JD-Core Version:    0.6.2
 */