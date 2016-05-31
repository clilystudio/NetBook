package com.clilystudio.app.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;

final class aH
        implements DialogInterface.OnClickListener {
    aH(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        BookInfoActivity.c_initContentView(this.b, this.a.isChecked());
        this.b.startActivity(AuthLoginActivity.a(this.b));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aH
 * JD-Core Version:    0.6.2
 */