package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;

final class z implements View$OnClickListener {

    private HomeShelfFragment a;

    z(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onClick(View View1) {
        if (HomeShelfFragment.a(a) != null)
            HomeShelfFragment.a(a).d();
    }
}
