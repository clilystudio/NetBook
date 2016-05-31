package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class dS
        implements View.OnClickListener {
    dS(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        TweetTabActivity.d_setTitle(this.a);
        TweetTabActivity.j(this.a);
        TweetTabActivity.a(this.a, false);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dS
 * JD-Core Version:    0.6.2
 */