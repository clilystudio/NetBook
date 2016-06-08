package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dn
        implements View.OnClickListener {
    dn(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.a(this.b, true);
        ReviewListActivity.m(this.b).setText("精品");
        ReviewListActivity.a(this.b, "all");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

