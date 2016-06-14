package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class E implements k<ListView> {
    final /* synthetic */ HomeShelfFragment a;

    E(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        i.a().c(new BookShelfRefreshEvent());
        HomeShelfFragment.e(this.a);
        HomeShelfAdapter.a = true;
        new Handler().postDelayed(new F(this), 1000);
    }
}
