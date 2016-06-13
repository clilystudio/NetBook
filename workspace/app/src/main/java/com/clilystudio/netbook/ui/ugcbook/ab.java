package com.clilystudio.netbook.ui.ugcbook;

import android.widget.PopupWindow;

final class ab
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ UGCMainActivity a;

    ab(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onDismiss() {
        UGCMainActivity.g(this.a);
    }
}
