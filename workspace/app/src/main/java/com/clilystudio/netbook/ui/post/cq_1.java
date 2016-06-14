package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cq implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ PostDetailActivity b;

    cq(PostDetailActivity postDetailActivity, TextView textView) {
        this.b = postDetailActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        PostDetailActivity.e(this.b).findViewById(2131493085).setVisibility(View.VISIBLE);
        this.a.setText("\u52a0\u8f7d\u4e2d...");
        PostDetailActivity.b(this.b);
    }
}
