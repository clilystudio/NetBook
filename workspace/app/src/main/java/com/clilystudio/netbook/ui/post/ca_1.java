package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class ca implements Runnable {

    private bZ a;

    ca(bZ bZ1) {
        a = bZ1;
    }

    public final void run() {
        if (!android.support.design.widget.am.a((AsyncTask) OtherUserActivity.b(a.a)))
            OtherUserActivity.b(a.a).cancel(true);
        OtherUserActivity.c(a.a);
    }
}
