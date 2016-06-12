package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View$OnClickListener;

final class n implements View$OnClickListener {

    private HomeShelfFragment a;

    n(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onClick(View View1) {
        ((HomeActivity) a.getActivity()).g();
    }
}
