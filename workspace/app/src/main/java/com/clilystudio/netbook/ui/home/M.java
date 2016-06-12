package com.clilystudio.netbook.ui.home;

final class M implements Runnable {

    private L a;

    M(L L1) {
        a = L1;
    }

    public final void run() {
        HomeTopicFragment.a(a.a);
    }
}
