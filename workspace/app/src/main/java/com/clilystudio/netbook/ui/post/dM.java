package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dM implements j {
    private /* synthetic */ TweetListFragment a;

    dM(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    @Override
    public final void a() {
        if (TweetListFragment.b(this.a) == null || TweetListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            TweetListFragment.k(this.a).setVisibility(0);
            if (!am.a((AsyncTask) TweetListFragment.l(this.a))) {
                TweetListFragment.l(this.a).cancel(true);
            }
            TweetListFragment.a(this.a, new dN(this.a, 0));
            TweetListFragment.b(this.a).b("50bff3ec209793513100001c", "updated");
        }
    }
}
