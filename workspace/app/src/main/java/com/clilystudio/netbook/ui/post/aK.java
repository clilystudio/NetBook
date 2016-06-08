package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class aK
        implements k<ListView> {
    aK(BookTopicListFragment paramBookTopicListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        this.a.d.setVisibility(8);
        new Handler().postDelayed(new aL(this), 1000L);
    }
}

