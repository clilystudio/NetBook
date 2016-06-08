package com.clilystudio.netbook.ui.ugcbook;

import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class b
        implements k<ListView> {
    b(AbsUGCListFragment paramAbsUGCListFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        this.a.j.setVisibility(8);
        this.a.f.postDelayed(new c(this), 1000L);
    }
}

