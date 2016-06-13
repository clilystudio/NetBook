package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow;

final class aW
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ CommonPostListActivity a;

    aW(CommonPostListActivity commonPostListActivity) {
        this.a = commonPostListActivity;
    }

    @Override
    public final void onDismiss() {
        CommonPostListActivity.l(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        CommonPostListActivity.m(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}
