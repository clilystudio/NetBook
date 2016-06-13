package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dQ
        implements View.OnClickListener {
    private /* synthetic */ TweetTabActivity a;

    dQ(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void onClick(View view) {
        TweetTabActivity.d(this.a);
        TweetTabActivity.h(this.a);
        TweetTabActivity.a(this.a, false);
    }
}
