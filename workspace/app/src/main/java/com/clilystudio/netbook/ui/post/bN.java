package com.clilystudio.netbook.ui.post;

final class bN implements Runnable {

    private MyTweetFragment a;

    bN(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void run() {
        MyTweetFragment.d(a);
        MyTweetFragment.e(a);
    }
}
