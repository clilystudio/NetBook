package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow$OnDismissListener;

final class de implements PopupWindow$OnDismissListener {

    private ReviewListActivity a;

    de(ReviewListActivity ReviewListActivity1) {
        a = ReviewListActivity1;
    }

    public final void onDismiss() {
        ReviewListActivity.b(a).setImageDrawable(a.getResources().getDrawable(2130837721));
        ReviewListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837721));
        ReviewListActivity.d(a).setImageDrawable(a.getResources().getDrawable(2130837721));
    }
}
