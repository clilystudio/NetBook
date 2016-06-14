package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bs implements k<ListView> {
    final /* synthetic */ NotifFragment a;

    bs(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        NotifFragment.a(this.a).setVisibility(View.GONE);
        NotifFragment.b(this.a).setVisibility(View.GONE);
        new Handler().postDelayed(new bt(this), 1000);
    }
}
