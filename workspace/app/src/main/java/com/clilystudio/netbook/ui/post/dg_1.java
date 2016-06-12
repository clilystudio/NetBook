package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

final class dg implements com.handmark.pulltorefresh.library.j {

    private ReviewListActivity a;

    dg(ReviewListActivity ReviewListActivity1) {
        a = ReviewListActivity1;
    }

    public final void a() {
        if (ReviewListActivity.f(a) == null || ReviewListActivity.f(a).getStatus() == AsyncTask$Status.FINISHED) {
            do do2;
            String[] String_1darray3;

            ReviewListActivity.s(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) ReviewListActivity.j(a)))
                ReviewListActivity.j(a).cancel(true);
            ReviewListActivity.a(a, new do (a, (byte) 0));
            do2 = ReviewListActivity.f(a);
            String_1darray3 = new String[3];
            String_1darray3[0] = ReviewListActivity.g(a);
            String_1darray3[1] = ReviewListActivity.h(a);
            String_1darray3[2] = ReviewListActivity.i(a);
            do2.b(String_1darray3);
        }
    }
}
