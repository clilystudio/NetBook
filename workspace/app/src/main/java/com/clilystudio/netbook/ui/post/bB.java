package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bB
        implements k<ListView> {
    bB(GirlTopicListActivity paramGirlTopicListActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        GirlTopicListActivity.d(this.a).setVisibility(8);
        new Handler().postDelayed(new bC(this), 1000L);
    }
}

