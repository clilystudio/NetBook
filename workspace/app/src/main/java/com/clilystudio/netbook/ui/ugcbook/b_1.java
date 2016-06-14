package com.clilystudio.netbook.ui.ugcbook;

import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class b implements k<ListView> {
    final /* synthetic */ AbsUGCListFragment a;

    b(AbsUGCListFragment absUGCListFragment) {
        this.a = absUGCListFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        this.a.j.setVisibility(View.GONE);
        this.a.f.postDelayed(new c(this), 1000);
    }
}
