package com.clilystudio.netbook.ui;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bs implements k {

    NotifFragment a;     // final access specifier removed

    bs(NotifFragment NotifFragment1) {
        a = NotifFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        NotifFragment.a(a).setVisibility(8);
        NotifFragment.b(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new bt(this), 1000L);
    }
}
