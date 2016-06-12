package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class dj implements Runnable {

    private di a;

    dj(di di1) {
        a = di1;
    }

    public final void run() {
        dp dp2;
        String[] String_1darray3;

        if (!android.support.design.widget.am.a((AsyncTask) ReviewListActivity.f(a.a)))
            ReviewListActivity.f(a.a).cancel(true);
        ReviewListActivity.a(a.a, new dp(a.a, (byte) 0));
        dp2 = ReviewListActivity.j(a.a);
        String_1darray3 = new String[3];
        String_1darray3[0] = ReviewListActivity.g(a.a);
        String_1darray3[1] = ReviewListActivity.h(a.a);
        String_1darray3[2] = ReviewListActivity.i(a.a);
        dp2.b(String_1darray3);
    }
}
