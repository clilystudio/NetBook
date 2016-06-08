package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dS
        implements View.OnClickListener {
    dS(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        TweetTabActivity.d(this.a);
        TweetTabActivity.j(this.a);
        TweetTabActivity.a(this.a, false);
    }
}

