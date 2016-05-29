package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class aA
        implements Runnable {
    aA(az paramaz) {
    }

    public final void run() {
        if (!am_CommonUtils.a_isTaskStoped(BookReviewListFragment.b(this.a.a)))
            BookReviewListFragment.b(this.a.a).cancel(true);
        BookReviewListFragment.c(this.a.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aA
 * JD-Core Version:    0.6.2
 */