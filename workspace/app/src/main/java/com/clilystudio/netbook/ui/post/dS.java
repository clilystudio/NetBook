package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dS
        implements View.OnClickListener {
    private /* synthetic */ TweetTabActivity a;

    dS(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void onClick(View view) {
        TweetTabActivity.d(this.a);
        TweetTabActivity.j(this.a);
        TweetTabActivity.a(this.a, false);
    }
}
