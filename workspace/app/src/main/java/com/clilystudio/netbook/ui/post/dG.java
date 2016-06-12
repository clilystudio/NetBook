package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

import com.clilystudio.netbook.model.Tweet;

final class dG implements com.handmark.pulltorefresh.library.j {

    private TweetHotFragment a;

    dG(TweetHotFragment TweetHotFragment1) {
        a = TweetHotFragment1;
    }

    public final void a() {
        if (TweetHotFragment.b(a) == null || TweetHotFragment.b(a).getStatus() == AsyncTask$Status.FINISHED) {
            int int2;
            String String3;

            TweetHotFragment.j(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) TweetHotFragment.k(a)))
                TweetHotFragment.k(a).cancel(true);
            TweetHotFragment.a(a, new dH(a, (byte) 0));
            int2 = TweetHotFragment.e(a).size();
            String3 = null;
            if (int2 > 0)
                String3 = ((Tweet) TweetHotFragment.e(a).get(-1 + TweetHotFragment.e(a).size())).get_id();
            TweetHotFragment.b(a).b(new String[]{String3});
        }
    }
}
