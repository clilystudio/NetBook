package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class dP
        implements View.OnClickListener {
    dP(TweetTabActivity paramTweetTabActivity) {
    }

    public final void onClick(View paramView) {
        if (TweetTabActivity.c_initContentView(this.a)) {
            TweetTabActivity.a(this.a, false);
            TweetTabActivity.d_setTitle(this.a);
            TweetTabActivity.d_setRight(this.a).setContentDescription("关闭选项");
            return;
        }
        TweetTabActivity.f_setTitle(this.a);
        TweetTabActivity.a(this.a, true);
        TweetTabActivity.g(this.a);
        TweetTabActivity.d_setRight(this.a).setContentDescription("展开选项");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dP
 * JD-Core Version:    0.6.2
 */