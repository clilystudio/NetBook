package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aL implements Runnable {
    private /* synthetic */ aK a;

    aL(aK aK2) {
        this.a = aK2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) BookTopicListFragment.b(this.a.a))) {
            BookTopicListFragment.b(this.a.a).cancel(true);
        }
        BookTopicListFragment.c(this.a.a);
    }
}
