package com.clilystudio.netbook.ui.home;

import android.os.Handler;

import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class E implements k {

    HomeShelfFragment a;     // final access specifier removed

    E(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void a(PullToRefreshBase PullToRefreshBase1) {
        i.a().c(new BookShelfRefreshEvent());
        HomeShelfFragment.e(a);
        HomeShelfAdapter.a = true;
        new Handler().postDelayed((Runnable) new F(this), 1000L);
    }
}
