package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an
        implements k<ListView> {
    an(BookHelpListActivity paramBookHelpListActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        BookHelpListActivity.d(this.a).setVisibility(8);
        new Handler().postDelayed(new ao(this), 1000L);
    }
}

