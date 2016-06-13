package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bL
        implements k<ListView> {
    final /* synthetic */ MyTweetFragment a;

    bL(MyTweetFragment myTweetFragment) {
        this.a = myTweetFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        MyTweetFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new bM(this), 1000);
    }
}
