package com.clilystudio.netbook.ui;

import android.view.View;

final class as
        implements View.OnClickListener {
    private /* synthetic */ BookCategoryListActivity a;

    as(BookCategoryListActivity bookCategoryListActivity) {
        this.a = bookCategoryListActivity;
    }

    @Override
    public final void onClick(View view) {
        BookCategoryListActivity.e(this.a);
    }
}
