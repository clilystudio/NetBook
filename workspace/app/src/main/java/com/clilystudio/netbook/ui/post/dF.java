package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dF implements Runnable {
    private /* synthetic */ dE a;

    dF(dE dE2) {
        this.a = dE2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) TweetHotFragment.b(this.a.a))) {
            TweetHotFragment.b(this.a.a).cancel(true);
        }
        TweetHotFragment.c(this.a.a);
    }
}
