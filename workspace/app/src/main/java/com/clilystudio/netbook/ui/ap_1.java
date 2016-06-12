package com.clilystudio.netbook.ui;

import android.os.AsyncTask$Status;

final class ap implements j {

    private BookCategoryFragment a;

    ap(BookCategoryFragment BookCategoryFragment1) {
        a = BookCategoryFragment1;
    }

    public final void a() {
        if (BookCategoryFragment.d(a) == null || BookCategoryFragment.d(a).getStatus() == AsyncTask$Status.FINISHED) {
            BookCategoryFragment.f(a).setVisibility(0);
            BookCategoryFragment.a(a, new aq(a));
            BookCategoryFragment.d(a).b(new String[0]);
        }
    }
}
