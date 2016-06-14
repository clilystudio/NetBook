package com.clilystudio.netbook.ui.post;

final class bN implements Runnable {
    private /* synthetic */ MyTweetFragment a;

    bN(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void run() {
        MyTweetFragment.d(this.a);
        MyTweetFragment.e(this.a);
    }
}
