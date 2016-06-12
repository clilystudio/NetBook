package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class dc implements View$OnClickListener {

    private PopupWindow a;
    private ReviewListActivity b;
    dc(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2) {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        ReviewListActivity.o(b).setText(2131034436);
        ReviewListActivity.b(b, "helpful");
        ReviewListActivity.n(b).setRefreshing();
    }
}
