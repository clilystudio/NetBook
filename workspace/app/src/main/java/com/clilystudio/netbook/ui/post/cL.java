package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class cL implements View$OnClickListener {

    private PopupWindow a;
    private ReviewListActivity b;
    cL(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2) {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        ReviewListActivity.a(b, a, 0);
    }
}
