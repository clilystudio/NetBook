package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.widget.av;

final class aU
        implements av {
    aU(BookTagListActivity paramBookTagListActivity) {
    }

    public final void a() {
        if ((BookTagListActivity.g(this.a) == null) || (BookTagListActivity.g(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            BookTagListActivity.c_initContentView(this.a).setVisibility(0);
            BookTagListActivity.a(this.a, new aW(this.a, (byte) 0));
            BookTagListActivity.g(this.a).b(new String[0]);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aU
 * JD-Core Version:    0.6.2
 */