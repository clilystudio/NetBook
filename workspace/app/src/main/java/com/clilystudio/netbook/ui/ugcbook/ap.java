package com.clilystudio.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ap implements k<ListView> {
    final /* synthetic */ UGCMainListFragment a;

    ap(UGCMainListFragment uGCMainListFragment) {
        this.a = uGCMainListFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        UGCMainListFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new aq(this), 1000);
    }
}
