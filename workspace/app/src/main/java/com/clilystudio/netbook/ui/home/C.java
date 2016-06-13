package com.clilystudio.netbook.ui.home;

import android.view.View;

final class C
        implements View.OnClickListener {
    private /* synthetic */ HomeShelfFragment a;

    C(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onClick(View view) {
        HomeShelfFragment.c(this.a);
    }
}
