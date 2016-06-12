package com.clilystudio.netbook.ui;

final class bt implements Runnable {

    private bs a;

    bt(bs bs1) {
        a = bs1;
    }

    public final void run() {
        if (NotifFragment.c(a.a) == null) {
            NotifFragment.a(a.a, false);
            NotifFragment.d(a.a).n();
        } else
            a.a.c();
    }
}
