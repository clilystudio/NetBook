package com.clilystudio.netbook.ui.ugcbook;

import android.widget.PopupWindow$OnDismissListener;

final class ab implements PopupWindow$OnDismissListener {

    private UGCMainActivity a;

    ab(UGCMainActivity UGCMainActivity1) {
        a = UGCMainActivity1;
    }

    public final void onDismiss() {
        UGCMainActivity.g(a);
    }
}
