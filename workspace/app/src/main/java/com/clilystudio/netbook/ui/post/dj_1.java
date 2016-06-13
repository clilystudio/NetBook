package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class dj
        implements Runnable {
    private /* synthetic */ di a;

    dj(di di2) {
        this.a = di2;
    }

    @Override
    public final void run() {
        if (!am.a(ReviewListActivity.f(this.a.a))) {
            ReviewListActivity.f(this.a.a).cancel(true);
        }
        ReviewListActivity.a(this.a.a, new dp(this.a.a, 0));
        dp dp2 = ReviewListActivity.j(this.a.a);
        String[] arrstring = new String[]{ReviewListActivity.g(this.a.a), ReviewListActivity.h(this.a.a), ReviewListActivity.i(this.a.a)};
        dp2.b(arrstring);
    }
}
