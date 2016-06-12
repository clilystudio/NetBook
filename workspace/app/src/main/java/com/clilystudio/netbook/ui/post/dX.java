package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dX implements k {

    TweetTimelineFragment a;     // final access specifier removed

    dX(TweetTimelineFragment TweetTimelineFragment1) {
        a = TweetTimelineFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        TweetTimelineFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new dY(this), 1000L);
    }
}
