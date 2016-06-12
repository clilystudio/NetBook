package com.clilystudio.netbook.ui.post;

import android.os.Handler;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an implements k {

    BookHelpListActivity a;     // final access specifier removed

    an(BookHelpListActivity BookHelpListActivity1) {
        a = BookHelpListActivity1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        BookHelpListActivity.d(a).setVisibility(8);
        new Handler().postDelayed((Runnable) new ao(this), 1000L);
    }
}
