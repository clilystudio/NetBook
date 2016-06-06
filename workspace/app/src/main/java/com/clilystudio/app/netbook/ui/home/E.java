package com.clilystudio.app.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;

import com.clilystudio.app.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class E
        implements k<ListView> {
    E(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        i_OttoBus.a().c(new BookShelfRefreshEvent());
        HomeShelfFragment.e(this.a);
        com.clilystudio.app.netbook.adapter.HomeShelfAdapter.a = true;
        new Handler().postDelayed(new F(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.E
 * JD-Core Version:    0.6.2
 */