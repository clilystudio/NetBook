package com.clilystudio.netbook.ui.post;

final class dj
        implements Runnable {
    dj(di paramdi) {
    }

    public final void run() {
        if (!am.a(ReviewListActivity.f(this.a.a)))
            ReviewListActivity.f(this.a.a).cancel(true);
        ReviewListActivity.a(this.a.a, new dp(this.a.a, 0));
        dp localdp = ReviewListActivity.j(this.a.a);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = ReviewListActivity.g(this.a.a);
        arrayOfString[1] = ReviewListActivity.h(this.a.a);
        arrayOfString[2] = ReviewListActivity.i(this.a.a);
        localdp.b(arrayOfString);
    }
}

