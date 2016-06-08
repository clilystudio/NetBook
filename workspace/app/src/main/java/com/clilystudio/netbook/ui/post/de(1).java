package com.clilystudio.netbook.ui.post;

final class de
        implements PopupWindow.OnDismissListener {
    de(ReviewListActivity paramReviewListActivity) {
    }

    public final void onDismiss() {
        ReviewListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        ReviewListActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}

