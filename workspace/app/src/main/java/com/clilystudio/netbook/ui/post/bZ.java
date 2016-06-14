package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bZ implements k<ListView> {
    final /* synthetic */ OtherUserActivity a;

    bZ(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void a(PullToRefreshBase<ListView> pullToRefreshBase) {
        OtherUserActivity.a(this.a).setVisibility(8);
        new Handler().postDelayed((Runnable) ((Object) new ca(this)), 1000);
    }
}
