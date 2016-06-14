package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dX implements k<ListView> {
    final /* synthetic */ TweetTimelineFragment a;

    dX(TweetTimelineFragment tweetTimelineFragment) {
        this.a = tweetTimelineFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        TweetTimelineFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new dY(this), 1000);
    }
}
