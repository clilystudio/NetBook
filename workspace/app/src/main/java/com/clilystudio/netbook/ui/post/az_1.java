package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class az implements k {

    BookReviewListFragment a;     // final access specifier removed

    az(BookReviewListFragment BookReviewListFragment1) {
        a = BookReviewListFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        a.d.setVisibility(8);
        new Handler().postDelayed((Runnable) new aA(this), 1000L);
    }
}
