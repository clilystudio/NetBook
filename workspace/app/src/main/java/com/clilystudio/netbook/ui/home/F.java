package com.clilystudio.netbook.ui.home;

final class F implements Runnable {
    private /* synthetic */ E a;

    F(E e) {
        this.a = e;
    }

    @Override
    public final void run() {
        HomeShelfFragment.f(this.a.a);
    }
}
