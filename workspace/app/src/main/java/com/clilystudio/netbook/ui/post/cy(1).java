package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cy
        implements View.OnClickListener {
    cy(ReviewActivity paramReviewActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        ReviewActivity.d(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        ReviewActivity.b(this.b);
    }
}

