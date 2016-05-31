package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class dT
        implements View.OnClickListener {
    dT(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        if (TweetTabActivity.c_initContentView(this.a)) {
            TweetTabActivity.d_setTitle(this.a);
            TweetTabActivity.a(this.a, false);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dT
 * JD-Core Version:    0.6.2
 */