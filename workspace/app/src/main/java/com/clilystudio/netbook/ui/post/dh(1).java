package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dh
        implements View.OnClickListener {
    dh(ReviewListActivity paramReviewListActivity) {
    }

    public final void onClick(View paramView) {
        ReviewListActivity.a(this.a, 2).showAsDropDown(paramView, 0, 1);
        ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

