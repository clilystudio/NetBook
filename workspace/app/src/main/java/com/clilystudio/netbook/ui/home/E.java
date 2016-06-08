package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;

import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class E
        implements k<ListView> {
    E(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        i.a().c(new BookShelfRefreshEvent());
        HomeShelfFragment.e(this.a);
        com.clilystudio.netbook.adapter.HomeShelfAdapter.a = true;
        new Handler().postDelayed(new F(this), 1000L);
    }
}

