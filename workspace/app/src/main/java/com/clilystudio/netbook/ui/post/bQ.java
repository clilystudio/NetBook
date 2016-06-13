package com.clilystudio.netbook.ui.post;

final class bQ
        implements Runnable {
    private /* synthetic */ bP a;

    bQ(bP bP2) {
        this.a = bP2;
    }

    @Override
    public final void run() {
        MyTweetFragment.i(this.a.a);
    }
}
