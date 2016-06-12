package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class aK implements k {

    BookTopicListFragment a;     // final access specifier removed

    aK(BookTopicListFragment BookTopicListFragment1) {
        a = BookTopicListFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        a.d.setVisibility(8);
        new Handler().postDelayed((Runnable) new aL(this), 1000L);
    }
}
