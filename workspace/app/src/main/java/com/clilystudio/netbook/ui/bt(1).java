package com.clilystudio.netbook.ui;

final class bt
        implements Runnable {
    bt(bs parambs) {
    }

    public final void run() {
        if (NotifFragment.c(this.a.a) == null) {
            NotifFragment.a(this.a.a, false);
            NotifFragment.d(this.a.a).n();
            return;
        }
        this.a.a.c();
    }
}

