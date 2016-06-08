package com.clilystudio.netbook.ui.post;

import com.handmark.pulltorefresh.library.j;

final class aF
        implements j {
    aF(BookReviewListFragment paramBookReviewListFragment) {
    }

    public final void a() {
        if ((BookReviewListFragment.b(this.a) == null) || (BookReviewListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            this.a.c.setVisibility(0);
            if (!am.a(BookReviewListFragment.j(this.a)))
                BookReviewListFragment.j(this.a).cancel(true);
            BookReviewListFragment.a(this.a, new aH(this.a, 0));
            aH localaH = BookReviewListFragment.b(this.a);
            String[] arrayOfString = new String[2];
            arrayOfString[0] = this.a.a();
            arrayOfString[1] = this.a.f;
            localaH.b(arrayOfString);
        }
    }
}

