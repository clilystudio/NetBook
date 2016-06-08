package com.clilystudio.netbook.ui.home;

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

