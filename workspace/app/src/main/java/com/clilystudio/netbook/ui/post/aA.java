package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class aA implements Runnable {

    private az a;

    aA(az az1) {
        a = az1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) BookReviewListFragment.b(a.a)))
            BookReviewListFragment.b(a.a).cancel(true);
        BookReviewListFragment.c(a.a);
    }
}
