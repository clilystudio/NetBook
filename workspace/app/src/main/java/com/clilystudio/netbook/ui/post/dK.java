package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class dK implements Runnable {

    private dJ a;

    dK(dJ dJ1) {
        a = dJ1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) TweetListFragment.b(a.a)))
            TweetListFragment.b(a.a).cancel(true);
        TweetListFragment.c(a.a);
    }
}
