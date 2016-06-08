package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class L
        implements k<ListView> {
    L(HomeTopicFragment paramHomeTopicFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        new Handler().postDelayed(new M(this), 1000L);
    }
}

