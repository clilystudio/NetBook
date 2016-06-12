package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

final class ao implements Runnable {

    private an a;

    ao(an an1) {
        a = an1;
    }

    public final void run() {
        av av2;
        String[] String_1darray3;

        if (!android.support.design.widget.am.a((AsyncTask) BookHelpListActivity.e(a.a)))
            BookHelpListActivity.e(a.a).cancel(true);
        BookHelpListActivity.a(a.a, new av(a.a, (byte) 0));
        av2 = BookHelpListActivity.h(a.a);
        String_1darray3 = new String[2];
        String_1darray3[0] = BookHelpListActivity.f(a.a);
        String_1darray3[1] = BookHelpListActivity.g(a.a);
        av2.b(String_1darray3);
    }
}
