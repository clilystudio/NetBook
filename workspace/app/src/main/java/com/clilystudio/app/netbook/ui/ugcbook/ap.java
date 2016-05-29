package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ap
        implements k<ListView> {
    ap(UGCMainListFragment paramUGCMainListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        UGCMainListFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new aq(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.ap
 * JD-Core Version:    0.6.2
 */