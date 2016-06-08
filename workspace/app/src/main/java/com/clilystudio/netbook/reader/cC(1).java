package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;

final class cC
        implements DialogInterface.OnClickListener {
    cC(ReaderWebActivity paramReaderWebActivity, View paramView) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        if (((CheckBox) this.a.findViewById(2131493415)).isChecked()) {
            ReaderWebActivity.b(this.b);
            return;
        }
        ReaderWebActivity.c(this.b);
    }
}

