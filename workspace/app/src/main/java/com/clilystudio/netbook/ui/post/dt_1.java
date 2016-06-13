package com.clilystudio.netbook.ui.post;

import android.view.View;

final class dt
        implements View.OnClickListener {
    private /* synthetic */ TweetDetailActivity a;

    dt(TweetDetailActivity tweetDetailActivity) {
        this.a = tweetDetailActivity;
    }

    @Override
    public final void onClick(View view) {
        TweetDetailActivity.a(this.a, (Integer) view.getTag());
        if (TweetDetailActivity.a(this.a)) {
            dA dA2 = new dA(this.a, this.a, 2131034584);
            String[] arrstring = new String[]{TweetDetailActivity.b(this.a).getToken(), TweetDetailActivity.c(this.a).getTweet().get_id(), String.valueOf(TweetDetailActivity.d(this.a))};
            dA2.b(arrstring);
        }
    }
}
