package com.clilystudio.app.netbook.ui.home;

import android.content.DialogInterface;
import android.widget.CheckBox;

import java.util.List;

final class t
        implements DialogInterface.OnClickListener {
    t(HomeShelfFragment paramHomeShelfFragment, List paramList, CheckBox paramCheckBox) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        HomeShelfFragment.a(this.c, this.a, this.b.isChecked());
        this.c.e();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.t
 * JD-Core Version:    0.6.2
 */