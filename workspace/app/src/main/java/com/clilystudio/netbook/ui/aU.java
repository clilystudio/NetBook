package com.clilystudio.netbook.ui;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class aU implements av {
    private /* synthetic */ BookTagListActivity a;

    aU(BookTagListActivity bookTagListActivity) {
        this.a = bookTagListActivity;
    }

    @Override
    public final void a() {
        if (BookTagListActivity.g(this.a) == null || BookTagListActivity.g(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            BookTagListActivity.c(this.a).setVisibility(View.VISIBLE);
            BookTagListActivity.a(this.a, new aW(this.a, 0));
            BookTagListActivity.g(this.a).b(new String[0]);
        }
    }
}
