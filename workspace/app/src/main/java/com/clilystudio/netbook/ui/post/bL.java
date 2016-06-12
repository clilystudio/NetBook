package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bL implements k {

    MyTweetFragment a;     // final access specifier removed

    bL(MyTweetFragment MyTweetFragment1) {
        a = MyTweetFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        MyTweetFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new bM(this), 1000L);
    }
}
