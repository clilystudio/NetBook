package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class di
        implements k<ListView> {
    final /* synthetic */ ReviewListActivity a;

    di(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        ReviewListActivity.e(this.a).setVisibility(8);
        new Handler().postDelayed(new dj(this), 1000);
    }
}
