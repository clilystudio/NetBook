package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.CheckBox;

import java.util.List;

final class t implements DialogInterface$OnClickListener {

    private List a;
    private CheckBox b;
    private HomeShelfFragment c;
    t(HomeShelfFragment HomeShelfFragment1, List List2, CheckBox CheckBox3) {
        c = HomeShelfFragment1;
        a = List2;
        b = CheckBox3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        HomeShelfFragment.a(c, a, b.isChecked());
        c.e();
    }
}
