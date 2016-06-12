package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class br implements View$OnClickListener {

    private NotifFragment a;

    br(NotifFragment NotifFragment1) {
        a = NotifFragment1;
    }

    public final void onClick(View View1) {
        a.c();
    }
}
