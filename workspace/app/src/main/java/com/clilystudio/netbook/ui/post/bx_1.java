package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow$OnDismissListener;

final class bx implements PopupWindow$OnDismissListener {

    private GirlTopicListActivity a;

    bx(GirlTopicListActivity GirlTopicListActivity1) {
        a = GirlTopicListActivity1;
    }

    public final void onDismiss() {
        GirlTopicListActivity.b(a).setImageDrawable(a.getResources().getDrawable(2130837721));
        GirlTopicListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837721));
    }
}
