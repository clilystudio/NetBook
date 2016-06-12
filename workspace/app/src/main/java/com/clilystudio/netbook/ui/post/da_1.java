package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.PopupWindow;

final class da implements View$OnClickListener {

    private PopupWindow a;
    private ReviewListActivity b;
    da(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2) {
        b = ReviewListActivity1;
        a = PopupWindow2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        ReviewListActivity.o(b).setText(2131034433);
        ReviewListActivity.b(b, "updated");
        ReviewListActivity.n(b).setRefreshing();
    }
}
