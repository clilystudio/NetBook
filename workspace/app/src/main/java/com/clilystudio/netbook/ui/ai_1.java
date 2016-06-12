package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class ai implements View$OnClickListener {

    private BookCategoryActivity a;

    ai(BookCategoryActivity BookCategoryActivity1) {
        a = BookCategoryActivity1;
    }

    public final void onClick(View View1) {
        BookCategoryActivity.a(a);
    }
}
