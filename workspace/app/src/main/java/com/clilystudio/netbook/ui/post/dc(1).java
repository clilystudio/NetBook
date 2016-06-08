package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dc
        implements View.OnClickListener {
    dc(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(2131034436);
        ReviewListActivity.b(this.b, "helpful");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

