package com.clilystudio.netbook.ui.user;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class u implements k {

    MyFavTopicFragment a;     // final access specifier removed

    u(MyFavTopicFragment MyFavTopicFragment1) {
        a = MyFavTopicFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        MyFavTopicFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new v(this), 1000L);
    }
}
