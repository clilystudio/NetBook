package com.clilystudio.netbook.ui.ugcbook;

import android.widget.PopupWindow$OnDismissListener;

final class ah implements PopupWindow$OnDismissListener {

    private UGCMainActivity a;

    ah(UGCMainActivity UGCMainActivity1) {
        a = UGCMainActivity1;
    }

    public final void onDismiss() {
        a.e("\u7B5B\u9009");
    }
}
