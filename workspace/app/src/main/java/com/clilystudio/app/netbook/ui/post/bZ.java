package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class bZ
        implements k<ListView> {
    bZ(OtherUserActivity paramOtherUserActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        OtherUserActivity.a(this.a).setVisibility(8);
        new Handler().postDelayed(new ca(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bZ
 * JD-Core Version:    0.6.2
 */