package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;

final class cF
        implements View.OnClickListener {
    cF(ReaderWebActivity paramReaderWebActivity, AlertDialog paramAlertDialog) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReaderWebActivity.b(this.b);
    }
}

