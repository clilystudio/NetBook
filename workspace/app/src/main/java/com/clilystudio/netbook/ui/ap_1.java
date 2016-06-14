package com.clilystudio.netbook.ui;

import android.os.AsyncTask;

final class ap implements j {
    private /* synthetic */ BookCategoryFragment a;

    ap(BookCategoryFragment bookCategoryFragment) {
        this.a = bookCategoryFragment;
    }

    @Override
    public final void a() {
        if (BookCategoryFragment.d(this.a) == null || BookCategoryFragment.d(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            BookCategoryFragment.f(this.a).setVisibility(0);
            BookCategoryFragment.a(this.a, new aq(this.a));
            BookCategoryFragment.d(this.a).b(new String[0]);
        }
    }
}
