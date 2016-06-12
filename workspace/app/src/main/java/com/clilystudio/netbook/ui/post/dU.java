package com.clilystudio.netbook.ui.post;

final class dU implements Runnable {

    private TweetTabActivity a;

    dU(TweetTabActivity TweetTabActivity1) {
        a = TweetTabActivity1;
    }

    public final void run() {
        TweetTabActivity.k(a).setVisibility(8);
        TweetTabActivity.l(a).setVisibility(8);
    }
}
