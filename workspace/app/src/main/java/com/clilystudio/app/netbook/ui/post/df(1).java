package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class df
        implements View.OnClickListener {
    df(ReviewListActivity paramReviewListActivity) {
    }

    public final void onClick(View paramView) {
        ReviewListActivity.a_initContentView(this.a, 1).showAsDropDown(paramView, 0, 1);
        ReviewListActivity.c_initContentView(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.df
 * JD-Core Version:    0.6.2
 */