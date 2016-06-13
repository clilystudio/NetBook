package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class az
        implements k<ListView> {
    final /* synthetic */ BookReviewListFragment a;

    az(BookReviewListFragment bookReviewListFragment) {
        this.a = bookReviewListFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        this.a.d.setVisibility(8);
        new Handler().postDelayed(new aA(this), 1000);
    }
}
