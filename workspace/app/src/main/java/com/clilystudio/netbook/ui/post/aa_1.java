package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

final class aa implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ BookHelpActivity b;

    aa(BookHelpActivity bookHelpActivity, TextView textView) {
        this.b = bookHelpActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        BookHelpActivity.e(this.b).findViewById(2131493085).setVisibility(0);
        this.a.setText("\u52a0\u8f7d\u4e2d...");
        BookHelpActivity.b(this.b);
    }
}
