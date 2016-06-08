package com.clilystudio.netbook.ui.post;

final class bC
        implements Runnable {
    bC(bB parambB) {
    }

    public final void run() {
        if (!am.a(GirlTopicListActivity.e(this.a.a)))
            GirlTopicListActivity.e(this.a.a).cancel(true);
        GirlTopicListActivity.a(this.a.a, new bJ(this.a.a, 0));
        bJ localbJ = GirlTopicListActivity.h(this.a.a);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = GirlTopicListActivity.f(this.a.a);
        arrayOfString[1] = GirlTopicListActivity.g(this.a.a);
        localbJ.b(arrayOfString);
    }
}

