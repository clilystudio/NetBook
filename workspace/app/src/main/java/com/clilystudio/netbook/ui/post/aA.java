package com.clilystudio.netbook.ui.post;

final class aA
        implements Runnable {
    aA(az paramaz) {
    }

    public final void run() {
        if (!am.a(BookReviewListFragment.b(this.a.a)))
            BookReviewListFragment.b(this.a.a).cancel(true);
        BookReviewListFragment.c(this.a.a);
    }
}

