package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class aK
        implements k<ListView> {
    aK(BookTopicListFragment paramBookTopicListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        this.a.d.setVisibility(8);
        new Handler().postDelayed(new aL(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aK
 * JD-Core Version:    0.6.2
 */