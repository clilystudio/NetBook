package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cy
        implements View.OnClickListener {
    cy(ReviewActivity paramReviewActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        ReviewActivity.d_setTitle(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        ReviewActivity.b_initContentView(this.b);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cy
 * JD-Core Version:    0.6.2
 */