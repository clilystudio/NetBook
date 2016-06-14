package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an implements k<ListView> {
    final /* synthetic */ BookHelpListActivity a;

    an(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        BookHelpListActivity.d(this.a).setVisibility(8);
        new Handler().postDelayed(new ao(this), 1000);
    }
}
