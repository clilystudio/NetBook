package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bL
        implements k<ListView> {
    bL(MyTweetFragment paramMyTweetFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        MyTweetFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new bM(this), 1000L);
    }
}

