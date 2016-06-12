package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

final class aF implements com.handmark.pulltorefresh.library.j {

    private BookReviewListFragment a;

    aF(BookReviewListFragment BookReviewListFragment1) {
        a = BookReviewListFragment1;
    }

    public final void a() {
        if (BookReviewListFragment.b(a) == null || BookReviewListFragment.b(a).getStatus() == AsyncTask$Status.FINISHED) {
            aH aH2;
            String[] String_1darray3;

            a.c.setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) BookReviewListFragment.j(a)))
                BookReviewListFragment.j(a).cancel(true);
            BookReviewListFragment.a(a, new aH(a, (byte) 0));
            aH2 = BookReviewListFragment.b(a);
            String_1darray3 = new String[2];
            String_1darray3[0] = a.a();
            String_1darray3[1] = a.f;
            aH2.b(String_1darray3);
        }
    }
}
