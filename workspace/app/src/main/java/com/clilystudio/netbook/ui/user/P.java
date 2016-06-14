package com.clilystudio.netbook.ui.user;

import android.widget.AbsListView;

final class P implements AbsListView.OnScrollListener {
    private /* synthetic */ PayConsumeActivity a;

    P(PayConsumeActivity payConsumeActivity) {
        this.a = payConsumeActivity;
    }

    @Override
    public final void onScroll(AbsListView absListView, int n, int n2, int n3) {
        PayConsumeActivity.a(this.a).onScroll(absListView, n, n2, n3);
        PayConsumeActivity.b(this.a).removeView(null);
    }

    @Override
    public final void onScrollStateChanged(AbsListView absListView, int n) {
        PayConsumeActivity.a(this.a).onScrollStateChanged(absListView, n);
    }
}
