package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.av;

final class aU
        implements av {
    aU(BookTagListActivity paramBookTagListActivity) {
    }

    public final void a() {
        if ((BookTagListActivity.g(this.a) == null) || (BookTagListActivity.g(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            BookTagListActivity.c(this.a).setVisibility(0);
            BookTagListActivity.a(this.a, new aW(this.a, 0));
            BookTagListActivity.g(this.a).b(new String[0]);
        }
    }
}

