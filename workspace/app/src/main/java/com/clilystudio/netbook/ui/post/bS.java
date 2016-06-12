package com.clilystudio.netbook.ui.post;

final class bS implements Runnable {

    private bR a;

    bS(bR bR1) {
        a = bR1;
    }

    public final void run() {
        MyTweetFragment.m(a.a);
    }
}
