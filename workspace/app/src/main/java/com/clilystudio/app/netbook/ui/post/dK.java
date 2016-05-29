package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class dK
        implements Runnable {
    dK(dJ paramdJ) {
    }

    public final void run() {
        if (!am_CommonUtils.a_isTaskStoped(TweetListFragment.b(this.a.a)))
            TweetListFragment.b(this.a.a).cancel(true);
        TweetListFragment.c(this.a.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dK
 * JD-Core Version:    0.6.2
 */