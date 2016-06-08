package com.clilystudio.netbook.ui.post;

final class bb
        implements Runnable {
    bb(ba paramba) {
    }

    public final void run() {
        if (!am.a(CommonPostListActivity.c(this.a.a)))
            CommonPostListActivity.c(this.a.a).cancel(true);
        CommonPostListActivity.a(this.a.a, new bi(this.a.a, 0));
        bi localbi = CommonPostListActivity.f(this.a.a);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = CommonPostListActivity.d(this.a.a);
        arrayOfString[1] = CommonPostListActivity.e(this.a.a);
        localbi.b(arrayOfString);
    }
}

