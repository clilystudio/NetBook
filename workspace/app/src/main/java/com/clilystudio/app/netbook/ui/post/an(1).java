package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

final class an
        implements k<ListView> {
    an(BookHelpListActivity paramBookHelpListActivity) {
    }

    public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase) {
        BookHelpListActivity.d_setTitle(this.a).setVisibility(8);
        new Handler().postDelayed(new ao(this), 1000L);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.an
 * JD-Core Version:    0.6.2
 */