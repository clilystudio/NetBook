package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class dv
        implements av {
    private /* synthetic */ TweetDetailActivity a;

    dv(TweetDetailActivity tweetDetailActivity) {
        this.a = tweetDetailActivity;
    }

    @Override
    public final void a() {
        if (TweetDetailActivity.m(this.a) == null || TweetDetailActivity.m(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            TweetDetailActivity.n(this.a);
        }
    }
}
