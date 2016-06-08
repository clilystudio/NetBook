package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.widget.av;

final class dv
        implements av {
    dv(TweetDetailActivity paramTweetDetailActivity) {
    }

    public final void a() {
        if ((TweetDetailActivity.m(this.a) == null) || (TweetDetailActivity.m(this.a).getStatus() == AsyncTask.Status.FINISHED))
            TweetDetailActivity.n(this.a);
    }
}

