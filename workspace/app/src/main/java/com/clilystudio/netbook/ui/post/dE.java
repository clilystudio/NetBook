package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dE implements k {

    TweetHotFragment a;     // final access specifier removed

    dE(TweetHotFragment TweetHotFragment1) {
        a = TweetHotFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        TweetHotFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new dF(this), 1000L);
    }
}
