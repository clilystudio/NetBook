package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.model.Tweet;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.j;

final class dZ
        implements j {
    dZ(TweetTimelineFragment paramTweetTimelineFragment) {
    }

    public final void a() {
        if ((TweetTimelineFragment.b(this.a) == null) || (TweetTimelineFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            TweetTimelineFragment.j(this.a).setVisibility(0);
            if (!com.arcsoft.hpay100.a.a.a(TweetTimelineFragment.k(this.a)))
                TweetTimelineFragment.k(this.a).cancel(true);
            TweetTimelineFragment.a(this.a, new ea(this.a, (byte) 0));
            int i = TweetTimelineFragment.h(this.a).size();
            String str = null;
            if (i > 0)
                str = ((Tweet) TweetTimelineFragment.h(this.a).get(-1 + TweetTimelineFragment.h(this.a).size())).get_id();
            ea localea = TweetTimelineFragment.b(this.a);
            String[] arrayOfString = new String[3];
            arrayOfString[0] = am_CommonUtils.e().getToken();
            arrayOfString[1] = am_CommonUtils.e().getUser().getId();
            arrayOfString[2] = str;
            localea.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dZ
 * JD-Core Version:    0.6.2
 */