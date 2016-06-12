package com.clilystudio.netbook.ui.home;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class L implements k {

    HomeTopicFragment a;     // final access specifier removed

    L(HomeTopicFragment HomeTopicFragment1) {
        a = HomeTopicFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        new Handler().postDelayed((Runnable) new M(this), 1000L);
    }
}
