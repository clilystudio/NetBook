package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class bM implements Runnable {

    private bL a;

    bM(bL bL1) {
        a = bL1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) MyTweetFragment.b(a.a)))
            MyTweetFragment.b(a.a).cancel(true);
        MyTweetFragment.c(a.a);
    }
}
