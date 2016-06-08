package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an
        implements k<ListView> {
    an(BookCategoryFragment paramBookCategoryFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        BookCategoryFragment.c(this.a).setVisibility(8);
        new Handler().postDelayed(new ao(this), 1000L);
    }
}

