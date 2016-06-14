package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class aK implements k<ListView> {
    final /* synthetic */ BookTopicListFragment a;

    aK(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        this.a.d.setVisibility(View.GONE);
        new Handler().postDelayed(new aL(this), 1000);
    }
}
