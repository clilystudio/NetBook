package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class as implements View$OnClickListener {

    private BookCategoryListActivity a;

    as(BookCategoryListActivity BookCategoryListActivity1) {
        a = BookCategoryListActivity1;
    }

    public final void onClick(View View1) {
        BookCategoryListActivity.e(a);
    }
}
