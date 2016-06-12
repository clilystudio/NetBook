package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.support.design.widget.am;

import com.clilystudio.netbook.model.Tweet;

final class dZ implements com.handmark.pulltorefresh.library.j {

    private TweetTimelineFragment a;

    dZ(TweetTimelineFragment TweetTimelineFragment1) {
        a = TweetTimelineFragment1;
    }

    public final void a() {
        if (TweetTimelineFragment.b(a) == null || TweetTimelineFragment.b(a).getStatus() == AsyncTask$Status.FINISHED) {
            int int2;
            String String3;
            ea ea4;
            String[] String_1darray5;

            TweetTimelineFragment.j(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) TweetTimelineFragment.k(a)))
                TweetTimelineFragment.k(a).cancel(true);
            TweetTimelineFragment.a(a, new ea(a, (byte) 0));
            int2 = TweetTimelineFragment.h(a).size();
            String3 = null;
            if (int2 > 0)
                String3 = ((Tweet) TweetTimelineFragment.h(a).get(-1 + TweetTimelineFragment.h(a).size())).get_id();
            ea4 = TweetTimelineFragment.b(a);
            String_1darray5 = new String[3];
            String_1darray5[0] = am.e().getToken();
            String_1darray5[1] = am.e().getUser().getId();
            String_1darray5[2] = String3;
            ea4.b(String_1darray5);
        }
    }
}
