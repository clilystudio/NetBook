package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dK
        implements Runnable {
    private /* synthetic */ dJ a;

    dK(dJ dJ2) {
        this.a = dJ2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) TweetListFragment.b(this.a.a))) {
            TweetListFragment.b(this.a.a).cancel(true);
        }
        TweetListFragment.c(this.a.a);
    }
}
