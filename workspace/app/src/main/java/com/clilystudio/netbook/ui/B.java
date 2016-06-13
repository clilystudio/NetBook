package com.clilystudio.netbook.ui;

import android.view.View;

final class B
        implements View.OnClickListener {
    private /* synthetic */ A a;

    B(A a) {
        this.a = a;
    }

    @Override
    public final void onClick(View view) {
        if (AudiobookInfoActivity.b(this.a.b)) {
            this.a.a.setMaxLines(4);
            AudiobookInfoActivity.a(this.a.b, false);
            return;
        }
        this.a.a.setMaxLines(Integer.MAX_VALUE);
        AudiobookInfoActivity.a(this.a.b, true);
    }
}
