package com.clilystudio.app.netbook.ui;

import android.content.DialogInterface;
import android.widget.CheckBox;

final class aG
        implements DialogInterface.OnClickListener {
    aG(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        BookInfoActivity.c_initContentView(this.b, this.a.isChecked());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aG
 * JD-Core Version:    0.6.2
 */