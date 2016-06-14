package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Tweet;

final class dG implements j {
    private /* synthetic */ TweetHotFragment a;

    dG(TweetHotFragment tweetHotFragment) {
        this.a = tweetHotFragment;
    }

    @Override
    public final void a() {
        if (TweetHotFragment.b(this.a) == null || TweetHotFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            TweetHotFragment.j(this.a).setVisibility(View.VISIBLE);
            if (!am.a((AsyncTask) TweetHotFragment.k(this.a))) {
                TweetHotFragment.k(this.a).cancel(true);
            }
            TweetHotFragment.a(this.a, new dH(this.a, 0));
            int n = TweetHotFragment.e(this.a).size();
            String string = null;
            if (n > 0) {
                string = ((Tweet) TweetHotFragment.e(this.a).get(-1 + TweetHotFragment.e(this.a).size())).get_id();
            }
            TweetHotFragment.b(this.a).b(string);
        }
    }
}
