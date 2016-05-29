package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class dm
        implements View.OnClickListener {
    dm(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        ReviewListActivity.m(this.b).setText("全部");
        ReviewListActivity.a(this.b, "all");
        ReviewListActivity.a(this.b, false);
        ReviewListActivity.n(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dm
 * JD-Core Version:    0.6.2
 */