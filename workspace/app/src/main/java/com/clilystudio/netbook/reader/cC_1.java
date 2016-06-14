package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;

final class cC implements DialogInterface.OnClickListener {
    private /* synthetic */ View a;
    private /* synthetic */ ReaderWebActivity b;

    cC(ReaderWebActivity readerWebActivity, View view) {
        this.b = readerWebActivity;
        this.a = view;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        if (((CheckBox) this.a.findViewById(2131493415)).isChecked()) {
            ReaderWebActivity.b(this.b);
            return;
        }
        ReaderWebActivity.c(this.b);
    }
}
