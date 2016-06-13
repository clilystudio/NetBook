package com.clilystudio.netbook.ui.home;

import android.view.View;

final class z
        implements View.OnClickListener {
    private /* synthetic */ HomeShelfFragment a;

    z(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onClick(View view) {
        if (HomeShelfFragment.a(this.a) != null) {
            HomeShelfFragment.a(this.a).d();
        }
    }
}
