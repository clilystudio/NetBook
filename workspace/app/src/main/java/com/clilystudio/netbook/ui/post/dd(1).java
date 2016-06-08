package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dd
        implements View.OnClickListener {
    dd(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(2131034434);
        ReviewListActivity.b(this.b, "comment-count");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

