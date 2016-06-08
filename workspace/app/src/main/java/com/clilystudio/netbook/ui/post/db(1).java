package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class db
        implements View.OnClickListener {
    db(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(2131034432);
        ReviewListActivity.b(this.b, "created");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

