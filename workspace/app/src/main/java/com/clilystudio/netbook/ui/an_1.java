package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an implements k<ListView> {
    final /* synthetic */ BookCategoryFragment a;

    an(BookCategoryFragment bookCategoryFragment) {
        this.a = bookCategoryFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        BookCategoryFragment.c(this.a).setVisibility(View.GONE);
        new Handler().postDelayed(new ao(this), 1000);
    }
}
