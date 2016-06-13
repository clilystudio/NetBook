package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class L
        implements k<ListView> {
    final /* synthetic */ HomeTopicFragment a;

    L(HomeTopicFragment homeTopicFragment) {
        this.a = homeTopicFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        new Handler().postDelayed(new M(this), 1000);
    }
}
