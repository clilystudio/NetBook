package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.widget.CheckBox;

final class cC implements DialogInterface$OnClickListener {

    private View a;
    private ReaderWebActivity b;
    cC(ReaderWebActivity ReaderWebActivity1, View View2) {
        b = ReaderWebActivity1;
        a = View2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (((CheckBox) a.findViewById(2131493415)).isChecked())
            ReaderWebActivity.b(b);
        else
            ReaderWebActivity.c(b);
    }
}
