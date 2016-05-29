package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class dE
        implements k<ListView> {
    dE(TweetHotFragment paramTweetHotFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        TweetHotFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new dF(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dE
 * JD-Core Version:    0.6.2
 */