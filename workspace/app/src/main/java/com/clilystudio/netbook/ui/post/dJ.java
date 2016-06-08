package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dJ
        implements k<ListView> {
    dJ(TweetListFragment paramTweetListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        TweetListFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new dK(this), 1000L);
    }
}

