package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

final class aG
        implements DialogInterface.OnClickListener {
    aG(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        BookInfoActivity.c(this.b, this.a.isChecked());
    }
}

