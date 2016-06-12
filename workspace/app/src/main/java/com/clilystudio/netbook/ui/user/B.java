package com.clilystudio.netbook.ui.user;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class B implements k {

    MyTopicFragment a;     // final access specifier removed

    B(MyTopicFragment MyTopicFragment1) {
        a = MyTopicFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        MyTopicFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new C(this), 1000L);
    }
}
