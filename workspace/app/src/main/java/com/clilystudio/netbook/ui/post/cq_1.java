package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class cq implements View$OnClickListener {

    private TextView a;
    private PostDetailActivity b;
    cq(PostDetailActivity PostDetailActivity1, TextView TextView2) {
        b = PostDetailActivity1;
        a = TextView2;
    }

    public final void onClick(View View1) {
        PostDetailActivity.e(b).findViewById(2131493085).setVisibility(0);
        a.setText((CharSequence) "\u52A0\u8F7D\u4E2D...");
        PostDetailActivity.b(b);
    }
}
