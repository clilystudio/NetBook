package com.clilystudio.netbook.ui.user;

import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;

final class P implements AbsListView$OnScrollListener {

    private PayConsumeActivity a;

    P(PayConsumeActivity PayConsumeActivity1) {
        a = PayConsumeActivity1;
    }

    public final void onScroll(AbsListView AbsListView1, int int2, int int3, int int4) {
        PayConsumeActivity.a(a).onScroll(AbsListView1, int2, int3, int4);
        PayConsumeActivity.b(a).removeView(null);
    }

    public final void onScrollStateChanged(AbsListView AbsListView1, int int2) {
        PayConsumeActivity.a(a).onScrollStateChanged(AbsListView1, int2);
    }
}
