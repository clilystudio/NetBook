package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.AbsListView;

final class a
        implements AbsListView.OnScrollListener {
    a(AbsPostActivity paramAbsPostActivity) {
    }

    public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {
        this.a.b.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }

    public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {
        this.a.b.onScrollStateChanged(paramAbsListView, paramInt);
        if (paramInt == 1)
            new Handler().post(new b(this));
    }
}

