package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class dm implements View$OnClickListener {

    private PopupWindow a;
    private ReviewListActivity b;
    dm(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2) {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        ReviewListActivity.m(b).setText((CharSequence) "\u5168\u90E8");
        ReviewListActivity.a(b, "all");
        ReviewListActivity.a(b, false);
        ReviewListActivity.n(b).setRefreshing();
    }
}
