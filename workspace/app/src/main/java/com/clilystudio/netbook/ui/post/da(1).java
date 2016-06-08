package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class da
        implements View.OnClickListener {
    da(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.o(this.b).setText(2131034433);
        ReviewListActivity.b(this.b, "updated");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

