package com.clilystudio.netbook.ui.user;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ac implements k {

    PayVoucherFragment a;     // final access specifier removed

    ac(PayVoucherFragment PayVoucherFragment1) {
        a = PayVoucherFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        PayVoucherFragment.b(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new ad(this), 1000L);
    }
}
