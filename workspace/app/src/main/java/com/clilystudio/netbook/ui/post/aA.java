package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aA implements Runnable {
    private /* synthetic */ az a;

    aA(az az2) {
        this.a = az2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) BookReviewListFragment.b((BookReviewListFragment) ((Object) this.a.a)))) {
            BookReviewListFragment.b((BookReviewListFragment) ((Object) this.a.a)).cancel(true);
        }
        BookReviewListFragment.c((BookReviewListFragment) ((Object) this.a.a));
    }
}
