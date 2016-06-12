package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

final class cE implements View$OnClickListener {

    private AlertDialog a;

    cE(ReaderWebActivity ReaderWebActivity1, AlertDialog AlertDialog2) {
        a = AlertDialog2;
    }

    public final void onClick(View View1) {
        a.dismiss();
    }
}
