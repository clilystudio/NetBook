package com.clilystudio.netbook.ui;

import android.view.View;

final class aD
        implements View.OnClickListener {
    private /* synthetic */ aC a;

    aD(aC aC2) {
        this.a = aC2;
    }

    @Override
    public final void onClick(View view) {
        if (BookInfoActivity.c(this.a.b)) {
            this.a.a.setMaxLines(4);
            BookInfoActivity.b(this.a.b, false);
            return;
        }
        this.a.a.setMaxLines(Integer.MAX_VALUE);
        BookInfoActivity.b(this.a.b, true);
    }
}
