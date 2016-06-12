package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class dF implements Runnable {

    private dE a;

    dF(dE dE1) {
        a = dE1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) TweetHotFragment.b(a.a)))
            TweetHotFragment.b(a.a).cancel(true);
        TweetHotFragment.c(a.a);
    }
}
