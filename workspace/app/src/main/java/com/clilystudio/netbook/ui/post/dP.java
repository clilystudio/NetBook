package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dP
        implements View.OnClickListener {
    dP(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        if (TweetTabActivity.c(this.a)) {
            TweetTabActivity.a(this.a, false);
            TweetTabActivity.d(this.a);
            TweetTabActivity.e(this.a).setContentDescription("关闭选项");
            return;
        }
        TweetTabActivity.f(this.a);
        TweetTabActivity.a(this.a, true);
        TweetTabActivity.g(this.a);
        TweetTabActivity.e(this.a).setContentDescription("展开选项");
    }
}

