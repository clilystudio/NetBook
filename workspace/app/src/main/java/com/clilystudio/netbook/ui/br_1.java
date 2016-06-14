package com.clilystudio.netbook.ui;

import android.view.View;

final class br implements View.OnClickListener {
    private /* synthetic */ NotifFragment a;

    br(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    @Override
    public final void onClick(View view) {
        this.a.c();
    }
}
