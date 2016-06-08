package com.clilystudio.netbook.ui.post;

final class dY
        implements Runnable {
    dY(dX paramdX) {
    }

    public final void run() {
        if (!am.a(TweetTimelineFragment.b(this.a.a)))
            TweetTimelineFragment.b(this.a.a).cancel(true);
        TweetTimelineFragment.c(this.a.a);
    }
}

