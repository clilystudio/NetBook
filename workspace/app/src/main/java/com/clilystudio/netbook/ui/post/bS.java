package com.clilystudio.netbook.ui.post;

final class bS
        implements Runnable {
    private /* synthetic */ bR a;

    bS(bR bR2) {
        this.a = bR2;
    }

    @Override
    public final void run() {
        MyTweetFragment.m(this.a.a);
    }
}
