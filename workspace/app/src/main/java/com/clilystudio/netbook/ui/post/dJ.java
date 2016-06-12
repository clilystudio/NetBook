package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dJ implements k {

    TweetListFragment a;     // final access specifier removed

    dJ(TweetListFragment TweetListFragment1) {
        a = TweetListFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        TweetListFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new dK(this), 1000L);
    }
}
