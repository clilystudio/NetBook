package com.clilystudio.netbook.ui;

import android.view.View;

final class aD
        implements View.OnClickListener {
    aD(aC paramaC) {
    }

    public final void onClick(View paramView) {
        if (BookInfoActivity.c(this.a.b)) {
            this.a.a.setMaxLines(4);
            BookInfoActivity.b(this.a.b, false);
            return;
        }
        this.a.a.setMaxLines(2147483647);
        BookInfoActivity.b(this.a.b, true);
    }
}

