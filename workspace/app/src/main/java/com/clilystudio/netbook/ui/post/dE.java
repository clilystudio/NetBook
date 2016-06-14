package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dE implements k<ListView> {
    final /* synthetic */ TweetHotFragment a;

    dE(TweetHotFragment tweetHotFragment) {
        this.a = tweetHotFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        TweetHotFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new dF(this), 1000);
    }
}
