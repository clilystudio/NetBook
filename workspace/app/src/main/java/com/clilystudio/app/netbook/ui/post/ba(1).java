package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ba
        implements k<ListView> {
    ba(CommonPostListActivity paramCommonPostListActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        CommonPostListActivity.b_initContentView(this.a).setVisibility(8);
        new Handler().postDelayed(new bb(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ba
 * JD-Core Version:    0.6.2
 */