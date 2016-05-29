package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class dt
        implements View.OnClickListener {
    dt(TweetDetailActivity paramTweetDetailActivity) {
    }

    public final void onClick(View paramView) {
        TweetDetailActivity.a(this.a, ((Integer) paramView.getTag()).intValue());
        if (TweetDetailActivity.a(this.a)) {
            dA localdA = new dA(this.a, this.a, 2131034584);
            String[] arrayOfString = new String[3];
            arrayOfString[0] = TweetDetailActivity.b(this.a).getToken();
            arrayOfString[1] = TweetDetailActivity.c(this.a).getTweet().get_id();
            arrayOfString[2] = String.valueOf(TweetDetailActivity.d(this.a));
            localdA.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dt
 * JD-Core Version:    0.6.2
 */