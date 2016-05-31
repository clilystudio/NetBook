package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dn
        implements View.OnClickListener {
    dn(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.a_initContentView(this.b, true);
        ReviewListActivity.m(this.b).setText("精品");
        ReviewListActivity.a_initContentView(this.b, "all");
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dn
 * JD-Core Version:    0.6.2
 */