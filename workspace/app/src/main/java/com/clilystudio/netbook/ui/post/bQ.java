package com.clilystudio.netbook.ui.post;

final class bQ implements Runnable {

    private bP a;

    bQ(bP bP1) {
        a = bP1;
    }

    public final void run() {
        MyTweetFragment.i(a.a);
    }
}
