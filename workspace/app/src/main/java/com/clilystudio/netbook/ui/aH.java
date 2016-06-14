package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class aH implements DialogInterface.OnClickListener {
    private /* synthetic */ CheckBox a;
    private /* synthetic */ BookInfoActivity b;

    aH(BookInfoActivity bookInfoActivity, CheckBox checkBox) {
        this.b = bookInfoActivity;
        this.a = checkBox;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        BookInfoActivity.c(this.b, this.a.isChecked());
        this.b.startActivity(AuthLoginActivity.a(this.b));
    }
}
