package com.clilystudio.netbook.ui.home;

import android.view.View;

final class n
        implements View.OnClickListener {
    private /* synthetic */ HomeShelfFragment a;

    n(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onClick(View view) {
        ((HomeActivity) this.a.getActivity()).g();
    }
}
