package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;

final class cE implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;

    cE(ReaderWebActivity readerWebActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
    }
}
