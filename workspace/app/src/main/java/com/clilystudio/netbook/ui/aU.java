package com.clilystudio.netbook.ui;

import android.os.AsyncTask$Status;

import com.clilystudio.netbook.widget.av;

final class aU implements av {

    private BookTagListActivity a;

    aU(BookTagListActivity BookTagListActivity1) {
        a = BookTagListActivity1;
    }

    public final void a() {
        if (BookTagListActivity.g(a) == null || BookTagListActivity.g(a).getStatus() == AsyncTask$Status.FINISHED) {
            BookTagListActivity.c(a).setVisibility(0);
            BookTagListActivity.a(a, new aW(a, (byte) 0));
            BookTagListActivity.g(a).b(new String[0]);
        }
    }
}
