package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.CheckBox;

final class aG implements DialogInterface$OnClickListener {

    private CheckBox a;
    private BookInfoActivity b;
    aG(BookInfoActivity BookInfoActivity1, CheckBox CheckBox2) {
        b = BookInfoActivity1;
        a = CheckBox2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        BookInfoActivity.c(b, a.isChecked());
    }
}
