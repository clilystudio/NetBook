package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.model.Tweet;
import com.handmark.pulltorefresh.library.j;

final class dZ
        implements j {
    dZ(TweetTimelineFragment paramTweetTimelineFragment) {
    }

    public final void a() {
        if ((TweetTimelineFragment.b(this.a) == null) || (TweetTimelineFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            TweetTimelineFragment.j(this.a).setVisibility(0);
            if (!am.a(TweetTimelineFragment.k(this.a)))
                TweetTimelineFragment.k(this.a).cancel(true);
            TweetTimelineFragment.a(this.a, new ea(this.a, 0));
            int i = TweetTimelineFragment.h(this.a).size();
            String str = null;
            if (i > 0)
                str = ((Tweet) TweetTimelineFragment.h(this.a).get(-1 + TweetTimelineFragment.h(this.a).size())).get_id();
            ea localea = TweetTimelineFragment.b(this.a);
            String[] arrayOfString = new String[3];
            arrayOfString[0] = am.e().getToken();
            arrayOfString[1] = am.e().getUser().getId();
            arrayOfString[2] = str;
            localea.b(arrayOfString);
        }
    }
}

