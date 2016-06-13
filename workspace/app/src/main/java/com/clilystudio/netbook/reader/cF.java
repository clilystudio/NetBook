package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;

final class cF
        implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ ReaderWebActivity b;

    cF(ReaderWebActivity readerWebActivity, AlertDialog alertDialog) {
        this.b = readerWebActivity;
        this.a = alertDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        ReaderWebActivity.b(this.b);
    }
}
