package com.clilystudio.netbook.ui;

final class ap
        implements j {
    ap(BookCategoryFragment paramBookCategoryFragment) {
    }

    public final void a() {
        if ((BookCategoryFragment.d(this.a) == null) || (BookCategoryFragment.d(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            BookCategoryFragment.f(this.a).setVisibility(0);
            BookCategoryFragment.a(this.a, new aq(this.a));
            BookCategoryFragment.d(this.a).b(new String[0]);
        }
    }
}

