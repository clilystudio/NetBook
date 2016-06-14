package com.clilystudio.netbook.ui.home;

import android.widget.PopupWindow;

final class d implements PopupWindow.OnDismissListener {
    private /* synthetic */ HomeActivity a;

    d(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    @Override
    public final void onDismiss() {
        HomeActivity.e(this.a);
    }
}
