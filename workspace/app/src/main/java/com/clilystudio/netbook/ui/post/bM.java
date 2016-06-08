package com.clilystudio.netbook.ui.post;

final class bM
        implements Runnable {
    bM(bL parambL) {
    }

    public final void run() {
        if (!am.a(MyTweetFragment.b(this.a.a)))
            MyTweetFragment.b(this.a.a).cancel(true);
        MyTweetFragment.c(this.a.a);
    }
}

