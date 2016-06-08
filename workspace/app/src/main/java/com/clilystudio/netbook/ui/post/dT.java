package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dT
        implements View.OnClickListener {
    dT(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        if (TweetTabActivity.c(this.a)) {
            TweetTabActivity.d(this.a);
            TweetTabActivity.a(this.a, false);
        }
    }
}

