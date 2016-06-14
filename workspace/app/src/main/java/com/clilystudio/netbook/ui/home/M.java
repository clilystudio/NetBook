package com.clilystudio.netbook.ui.home;

final class M implements Runnable {
    private /* synthetic */ L a;

    M(L l) {
        this.a = l;
    }

    @Override
    public final void run() {
        HomeTopicFragment.a(this.a.a);
    }
}
