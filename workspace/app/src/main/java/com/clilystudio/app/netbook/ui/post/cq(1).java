package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cq
        implements View.OnClickListener {
    cq(PostDetailActivity paramPostDetailActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        PostDetailActivity.e(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("加载中...");
        PostDetailActivity.b_initContentView(this.b);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cq
 * JD-Core Version:    0.6.2
 */