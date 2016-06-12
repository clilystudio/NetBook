package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;

final class C implements View$OnClickListener {

    private HomeShelfFragment a;

    C(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onClick(View View1) {
        HomeShelfFragment.c(a);
    }
}
