package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bZ implements k {

    OtherUserActivity a;     // final access specifier removed

    bZ(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        OtherUserActivity.a(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new ca(this), 1000L);
    }
}
