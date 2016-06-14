package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.Tweet;

final class dZ implements j {
    private /* synthetic */ TweetTimelineFragment a;

    dZ(TweetTimelineFragment tweetTimelineFragment) {
        this.a = tweetTimelineFragment;
    }

    @Override
    public final void a() {
        if (TweetTimelineFragment.b(this.a) == null || TweetTimelineFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            TweetTimelineFragment.j(this.a).setVisibility(View.VISIBLE);
            if (!am.a((AsyncTask) TweetTimelineFragment.k(this.a))) {
                TweetTimelineFragment.k(this.a).cancel(true);
            }
            TweetTimelineFragment.a(this.a, new ea(this.a, 0));
            int n = TweetTimelineFragment.h(this.a).size();
            String string = null;
            if (n > 0) {
                string = ((Tweet) TweetTimelineFragment.h(this.a).get(-1 + TweetTimelineFragment.h(this.a).size())).get_id();
            }
            ea ea2 = TweetTimelineFragment.b(this.a);
            String[] arrstring = new String[]{am.e().getToken(), am.e().getUser().getId(), string};
            ea2.b(arrstring);
        }
    }
}
