package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.widget.CheckBox;

import java.util.List;

final class t
        implements DialogInterface.OnClickListener {
    private /* synthetic */ List a;
    private /* synthetic */ CheckBox b;
    private /* synthetic */ HomeShelfFragment c;

    t(HomeShelfFragment homeShelfFragment, List list, CheckBox checkBox) {
        this.c = homeShelfFragment;
        this.a = list;
        this.b = checkBox;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        HomeShelfFragment.a(this.c, this.a, this.b.isChecked());
        this.c.e();
    }
}
