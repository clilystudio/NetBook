package com.clilystudio.netbook.ui.ugcbook;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ap implements k {

    UGCMainListFragment a;     // final access specifier removed

    ap(UGCMainListFragment UGCMainListFragment1) {
        a = UGCMainListFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        UGCMainListFragment.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new aq(this), 1000L);
    }
}
