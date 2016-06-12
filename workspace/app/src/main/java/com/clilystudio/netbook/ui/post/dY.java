package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class dY implements Runnable {

    private dX a;

    dY(dX dX1) {
        a = dX1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) TweetTimelineFragment.b(a.a)))
            TweetTimelineFragment.b(a.a).cancel(true);
        TweetTimelineFragment.c(a.a);
    }
}
