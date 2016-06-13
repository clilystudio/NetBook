package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;

final class bP
        implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ int b;
    private /* synthetic */ ReaderOptionActivity c;

    bP(ReaderOptionActivity readerOptionActivity, AlertDialog alertDialog, int n) {
        this.c = readerOptionActivity;
        this.a = alertDialog;
        this.b = n;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        if (ReaderOptionActivity.b(this.c) != this.b) {
            ReaderOptionActivity.a(this.c, this.b);
            ReaderOptionActivity.d(this.c).setText(ReaderOptionActivity.c(this.c)[this.b]);
            a.b((Context) this.c, "reader_screen_off_time", ReaderOptionActivity.e(this.c)[this.b]);
        }
    }
}
