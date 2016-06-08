package com.clilystudio.netbook.ui.post;

final class dK
        implements Runnable {
    dK(dJ paramdJ) {
    }

    public final void run() {
        if (!am.a(TweetListFragment.b(this.a.a)))
            TweetListFragment.b(this.a.a).cancel(true);
        TweetListFragment.c(this.a.a);
    }
}

