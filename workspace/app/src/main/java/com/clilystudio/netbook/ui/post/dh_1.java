package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class dh implements View$OnClickListener {

    private ReviewListActivity a;

    dh(ReviewListActivity ReviewListActivity1) {
        a = ReviewListActivity1;
    }

    public final void onClick(View View1) {
        ReviewListActivity.a(a, 2).showAsDropDown(View1, 0, 1);
        ReviewListActivity.d(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
