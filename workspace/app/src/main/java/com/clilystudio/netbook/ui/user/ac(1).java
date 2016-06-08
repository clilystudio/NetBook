package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ac
        implements k<ListView> {
    ac(PayVoucherFragment paramPayVoucherFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        PayVoucherFragment.b(this.a).setVisibility(8);
        new Handler().postDelayed(new ad(this), 1000L);
    }
}

