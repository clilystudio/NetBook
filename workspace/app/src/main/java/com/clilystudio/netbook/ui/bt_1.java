package com.clilystudio.netbook.ui;

final class bt implements Runnable {
    private /* synthetic */ bs a;

    bt(bs bs2) {
        this.a = bs2;
    }

    @Override
    public final void run() {
        if (NotifFragment.c(this.a.a) == null) {
            NotifFragment.a(this.a.a, false);
            NotifFragment.d(this.a.a).n();
            return;
        }
        this.a.a.c();
    }
}
