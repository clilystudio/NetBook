package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dT implements View.OnClickListener {
    private /* synthetic */ TweetTabActivity a;

    dT(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void onClick(View view) {
        if (TweetTabActivity.c(this.a)) {
            TweetTabActivity.d(this.a);
            TweetTabActivity.a(this.a, false);
        }
    }
}
