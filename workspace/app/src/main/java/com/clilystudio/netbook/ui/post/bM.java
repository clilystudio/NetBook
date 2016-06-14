package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class bM implements Runnable {
    private /* synthetic */ bL a;

    bM(bL bL2) {
        this.a = bL2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) MyTweetFragment.b(this.a.a))) {
            MyTweetFragment.b(this.a.a).cancel(true);
        }
        MyTweetFragment.c(this.a.a);
    }
}
