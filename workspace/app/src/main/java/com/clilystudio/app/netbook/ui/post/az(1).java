package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class az
        implements k<ListView> {
    az(BookReviewListFragment paramBookReviewListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        this.a.d.setVisibility(8);
        new Handler().postDelayed(new aA(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.az
 * JD-Core Version:    0.6.2
 */