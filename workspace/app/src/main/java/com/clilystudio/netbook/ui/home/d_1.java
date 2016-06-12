package com.clilystudio.netbook.ui.home;

import android.widget.PopupWindow$OnDismissListener;

final class d implements PopupWindow$OnDismissListener {

    private HomeActivity a;

    d(HomeActivity HomeActivity1) {
        a = HomeActivity1;
    }

    public final void onDismiss() {
        HomeActivity.e(a);
    }
}
