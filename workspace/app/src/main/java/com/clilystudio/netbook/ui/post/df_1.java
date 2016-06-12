package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class df implements View$OnClickListener {

    private ReviewListActivity a;

    df(ReviewListActivity ReviewListActivity1) {
        a = ReviewListActivity1;
    }

    public final void onClick(View View1) {
        ReviewListActivity.a(a, 1).showAsDropDown(View1, 0, 1);
        ReviewListActivity.c(a).setImageDrawable(a.getResources().getDrawable(2130837722));
    }
}
