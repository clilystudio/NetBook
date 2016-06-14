package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class cy implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ ReviewActivity b;

    cy(ReviewActivity reviewActivity, TextView textView) {
        this.b = reviewActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        ReviewActivity.d(this.b).findViewById(2131493085).setVisibility(View.VISIBLE);
        this.a.setText("\u52a0\u8f7d\u4e2d...");
        ReviewActivity.b(this.b);
    }
}
