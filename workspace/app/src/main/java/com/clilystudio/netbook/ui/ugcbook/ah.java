package com.clilystudio.netbook.ui.ugcbook;

import android.widget.PopupWindow;

final class ah
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ UGCMainActivity a;

    ah(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onDismiss() {
        this.a.e("\u7b5b\u9009");
    }
}
