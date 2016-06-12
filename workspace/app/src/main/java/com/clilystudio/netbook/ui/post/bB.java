package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bB implements k {

    GirlTopicListActivity a;     // final access specifier removed

    bB(GirlTopicListActivity GirlTopicListActivity1) {
        a = GirlTopicListActivity1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        GirlTopicListActivity.d(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new bC(this), 1000L);
    }
}
