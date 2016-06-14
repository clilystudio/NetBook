package com.clilystudio.netbook.ui;

import android.view.View;

final class ai implements View.OnClickListener {
    private /* synthetic */ BookCategoryActivity a;

    ai(BookCategoryActivity bookCategoryActivity) {
        this.a = bookCategoryActivity;
    }

    @Override
    public final void onClick(View view) {
        BookCategoryActivity.a(this.a);
    }
}
