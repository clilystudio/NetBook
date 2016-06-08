package com.clilystudio.netbook.ui.post;

final class ao
        implements Runnable {
    ao(an paraman) {
    }

    public final void run() {
        if (!am.a(BookHelpListActivity.e(this.a.a)))
            BookHelpListActivity.e(this.a.a).cancel(true);
        BookHelpListActivity.a(this.a.a, new av(this.a.a, 0));
        av localav = BookHelpListActivity.h(this.a.a);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = BookHelpListActivity.f(this.a.a);
        arrayOfString[1] = BookHelpListActivity.g(this.a.a);
        localav.b(arrayOfString);
    }
}

