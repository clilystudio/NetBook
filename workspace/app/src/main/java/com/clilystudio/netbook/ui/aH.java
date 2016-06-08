package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class aH
        implements DialogInterface.OnClickListener {
    aH(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        BookInfoActivity.c(this.b, this.a.isChecked());
        this.b.startActivity(AuthLoginActivity.a(this.b));
    }
}

