package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

final class aG
        implements DialogInterface.OnClickListener {
    private /* synthetic */ CheckBox a;
    private /* synthetic */ BookInfoActivity b;

    aG(BookInfoActivity bookInfoActivity, CheckBox checkBox) {
        this.b = bookInfoActivity;
        this.a = checkBox;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        BookInfoActivity.c(this.b, this.a.isChecked());
    }
}
