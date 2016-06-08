package com.clilystudio.netbook.ui.home;

import android.view.View;

final class z
        implements View.OnClickListener {
    z(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void onClick(View paramView) {
        if (HomeShelfFragment.a(this.a) != null)
            HomeShelfFragment.a(this.a).d();
    }
}

