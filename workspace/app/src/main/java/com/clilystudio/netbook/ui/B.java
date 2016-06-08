package com.clilystudio.netbook.ui;

import android.view.View;

final class B
        implements View.OnClickListener {
    B(A paramA) {
    }

    public final void onClick(View paramView) {
        if (AudiobookInfoActivity.b(this.a.b)) {
            this.a.a.setMaxLines(4);
            AudiobookInfoActivity.a(this.a.b, false);
            return;
        }
        this.a.a.setMaxLines(2147483647);
        AudiobookInfoActivity.a(this.a.b, true);
    }
}

