package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aD
 * JD-Core Version:    0.6.2
 */