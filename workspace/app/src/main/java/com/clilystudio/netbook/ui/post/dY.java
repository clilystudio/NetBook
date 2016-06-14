package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import com.clilystudio.netbook.am;

final class dY implements Runnable {
    private /* synthetic */ dX a;

    dY(dX dX2) {
        this.a = dX2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) TweetTimelineFragment.b(this.a.a))) {
            TweetTimelineFragment.b(this.a.a).cancel(true);
        }
        TweetTimelineFragment.c(this.a.a);
    }
}
