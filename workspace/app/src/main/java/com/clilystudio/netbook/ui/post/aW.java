package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow$OnDismissListener;

final class aW implements PopupWindow$OnDismissListener {

    private CommonPostListActivity a;

    aW(CommonPostListActivity CommonPostListActivity1) {
        a = CommonPostListActivity1;
    }

    public final void onDismiss() {
        CommonPostListActivity.l(a).setImageDrawable(a.getResources().getDrawable(2130837721));
        CommonPostListActivity.m(a).setImageDrawable(a.getResources().getDrawable(2130837721));
    }
}
