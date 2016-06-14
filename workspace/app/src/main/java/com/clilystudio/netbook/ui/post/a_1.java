package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.AbsListView;

final class a implements AbsListView.OnScrollListener {
    final /* synthetic */ AbsPostActivity a;

    a(AbsPostActivity absPostActivity) {
        this.a = absPostActivity;
    }

    @Override
    public final void onScroll(AbsListView absListView, int n, int n2, int n3) {
        this.a.b.onScroll(absListView, n, n2, n3);
    }

    @Override
    public final void onScrollStateChanged(AbsListView absListView, int n) {
        this.a.b.onScrollStateChanged(absListView, n);
        if (n == 1) {
            new Handler().post(new b(this));
        }
    }
}
