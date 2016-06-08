package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class cN
        implements View.OnClickListener {
    cN(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        ReviewListActivity.a(this.b, this.a, 2);
    }
}

