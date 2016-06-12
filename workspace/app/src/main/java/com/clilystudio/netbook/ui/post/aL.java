package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class aL implements Runnable {

    private aK a;

    aL(aK aK1) {
        a = aK1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) BookTopicListFragment.b(a.a)))
            BookTopicListFragment.b(a.a).cancel(true);
        BookTopicListFragment.c(a.a);
    }
}
