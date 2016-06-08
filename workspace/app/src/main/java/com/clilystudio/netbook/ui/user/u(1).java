package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class u
        implements k<ListView> {
    u(MyFavTopicFragment paramMyFavTopicFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        MyFavTopicFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new v(this), 1000L);
    }
}

