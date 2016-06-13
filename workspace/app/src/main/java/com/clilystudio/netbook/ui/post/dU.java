package com.clilystudio.netbook.ui.post;

final class dU
        implements Runnable {
    private /* synthetic */ TweetTabActivity a;

    dU(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void run() {
        TweetTabActivity.k(this.a).setVisibility(8);
        TweetTabActivity.l(this.a).setVisibility(8);
    }
}
