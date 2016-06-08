package com.clilystudio.netbook.ui.post;

import android.view.View;

final class df
        implements View.OnClickListener {
    df(ReviewListActivity paramReviewListActivity) {
    }

    public final void onClick(View paramView) {
        ReviewListActivity.a(this.a, 1).showAsDropDown(paramView, 0, 1);
        ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

