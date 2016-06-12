package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

final class cF implements View$OnClickListener {

    private AlertDialog a;
    private ReaderWebActivity b;
    cF(ReaderWebActivity ReaderWebActivity1, AlertDialog AlertDialog2) {
        b = ReaderWebActivity1;
        a = AlertDialog2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        ReaderWebActivity.b(b);
    }
}
