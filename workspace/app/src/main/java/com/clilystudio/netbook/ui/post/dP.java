package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dP implements View.OnClickListener {
    private /* synthetic */ TweetTabActivity a;

    dP(TweetTabActivity tweetTabActivity) {
        this.a = tweetTabActivity;
    }

    @Override
    public final void onClick(View view) {
        if (TweetTabActivity.c(this.a)) {
            TweetTabActivity.a(this.a, false);
            TweetTabActivity.d(this.a);
            TweetTabActivity.e(this.a).setContentDescription("\u5173\u95ed\u9009\u9879");
            return;
        }
        TweetTabActivity.f(this.a);
        TweetTabActivity.a(this.a, true);
        TweetTabActivity.g(this.a);
        TweetTabActivity.e(this.a).setContentDescription("\u5c55\u5f00\u9009\u9879");
    }
}
