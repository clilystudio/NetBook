package com.clilystudio.netbook.ui.ugcbook;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class b implements k {

    AbsUGCListFragment a;     // final access specifier removed

    b(AbsUGCListFragment AbsUGCListFragment1) {
        a = AbsUGCListFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        a.j.setVisibility(8);
        a.f.postDelayed((Runnable) new c(this), 1000L);
    }
}
