package com.clilystudio.netbook.ui;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an implements k {

    BookCategoryFragment a;     // final access specifier removed

    an(BookCategoryFragment BookCategoryFragment1) {
        a = BookCategoryFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        BookCategoryFragment.c(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new ao(this), 1000L);
    }
}
