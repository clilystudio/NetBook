package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ba implements k {

    CommonPostListActivity a;     // final access specifier removed

    ba(CommonPostListActivity CommonPostListActivity1) {
        a = CommonPostListActivity1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        CommonPostListActivity.b(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new bb(this), 1000L);
    }
}
