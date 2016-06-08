package com.clilystudio.netbook.ui.post;

final class dF
        implements Runnable {
    dF(dE paramdE) {
    }

    public final void run() {
        if (!am.a(TweetHotFragment.b(this.a.a)))
            TweetHotFragment.b(this.a.a).cancel(true);
        TweetHotFragment.c(this.a.a);
    }
}

