package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ba
        implements k<ListView> {
    ba(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        CommonPostListActivity.b(this.a).setVisibility(8);
        new Handler().postDelayed(new bb(this), 1000L);
    }
}

