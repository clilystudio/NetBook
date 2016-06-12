package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.CheckBox;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class aH implements DialogInterface$OnClickListener {

    private CheckBox a;
    private BookInfoActivity b;
    aH(BookInfoActivity BookInfoActivity1, CheckBox CheckBox2) {
        b = BookInfoActivity1;
        a = CheckBox2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        BookInfoActivity.c(b, a.isChecked());
        b.startActivity(AuthLoginActivity.a((Context) b));
    }
}
