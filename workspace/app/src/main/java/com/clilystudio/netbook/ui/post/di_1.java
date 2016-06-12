package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class di implements k {

    ReviewListActivity a;     // final access specifier removed

    di(ReviewListActivity ReviewListActivity1) {
        a = ReviewListActivity1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        ReviewListActivity.e(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new dj(this), 1000L);
    }
}
