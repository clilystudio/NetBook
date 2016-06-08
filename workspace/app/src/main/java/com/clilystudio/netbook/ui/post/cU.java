package com.clilystudio.netbook.ui.post;

import android.view.View;

final class cU
        implements View.OnClickListener {
    cU(ReviewListActivity paramReviewListActivity) {
    }

    public final void onClick(View paramView) {
        ReviewListActivity.a(this.a, 0).showAsDropDown(paramView, 0, 1);
        ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

