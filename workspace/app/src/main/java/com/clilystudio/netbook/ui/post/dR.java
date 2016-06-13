package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dR
        implements View.OnClickListener {
    private /* synthetic */ TweetTabActivity a;

    dR(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void onClick(View view) {
        TweetTabActivity.d(this.a);
        TweetTabActivity.i(this.a);
        TweetTabActivity.a(this.a, false);
    }
}
