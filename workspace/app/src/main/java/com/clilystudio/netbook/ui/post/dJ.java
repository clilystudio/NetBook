package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dJ implements k<ListView> {
    final /* synthetic */ TweetListFragment a;

    dJ(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        TweetListFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new dK(this), 1000);
    }
}
