package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cq
        implements View.OnClickListener {
    cq(PostDetailActivity paramPostDetailActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        PostDetailActivity.e(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        PostDetailActivity.b(this.b);
    }
}
