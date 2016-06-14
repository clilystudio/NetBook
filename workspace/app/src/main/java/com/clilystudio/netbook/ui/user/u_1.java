package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class u implements k<ListView> {
    final /* synthetic */ MyFavTopicFragment a;

    u(MyFavTopicFragment myFavTopicFragment) {
        this.a = myFavTopicFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        MyFavTopicFragment.a(this.a).setVisibility(View.GONE);
        new Handler().postDelayed(new v(this), 1000);
    }
}
