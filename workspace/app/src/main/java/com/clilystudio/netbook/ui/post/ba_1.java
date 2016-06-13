package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class ba
        implements k<ListView> {
    final /* synthetic */ CommonPostListActivity a;

    ba(CommonPostListActivity commonPostListActivity) {
        this.a = commonPostListActivity;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        CommonPostListActivity.b(this.a).setVisibility(8);
        new Handler().postDelayed(new bb(this), 1000);
    }
}
