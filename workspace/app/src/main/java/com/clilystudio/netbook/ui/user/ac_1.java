package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ac implements k<ListView> {
    final /* synthetic */ PayVoucherFragment a;

    ac(PayVoucherFragment payVoucherFragment) {
        this.a = payVoucherFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        PayVoucherFragment.b(this.a).setVisibility(View.GONE);
        new Handler().postDelayed(new ad(this), 1000);
    }
}
