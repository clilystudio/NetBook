package com.clilystudio.netbook.ui.home;

import android.view.View;

final class B implements View.OnClickListener {
    private /* synthetic */ HomeShelfFragment a;

    B(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onClick(View view) {
        HomeShelfFragment.b(this.a);
    }
}
