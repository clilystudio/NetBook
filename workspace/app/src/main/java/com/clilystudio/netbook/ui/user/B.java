package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class B
        implements k<ListView> {
    B(MyTopicFragment paramMyTopicFragment) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        MyTopicFragment.a(this.a).setVisibility(8);
        new Handler().postDelayed(new C(this), 1000L);
    }
}
