package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class bj implements View$OnClickListener {

    private MhdListActivity a;

    bj(MhdListActivity MhdListActivity1) {
        a = MhdListActivity1;
    }

    public final void onClick(View View1) {
        MhdListActivity.a(a);
    }
}
