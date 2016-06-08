package com.clilystudio.netbook.ui.post;

final class aL
        implements Runnable {
    aL(aK paramaK) {
    }

    public final void run() {
        if (!am.a(BookTopicListFragment.b(this.a.a)))
            BookTopicListFragment.b(this.a.a).cancel(true);
        BookTopicListFragment.c(this.a.a);
    }
}

