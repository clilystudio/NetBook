package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;

final class B implements View$OnClickListener {

    private HomeShelfFragment a;

    B(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onClick(View View1) {
        HomeShelfFragment.b(a);
    }
}
