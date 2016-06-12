package com.clilystudio.netbook.ui.home;

final class l implements Runnable {

    private HomeParentActivity a;

    l(HomeParentActivity HomeParentActivity1) {
        a = HomeParentActivity1;
    }

    public final void run() {
        new m(a, (byte) 0).b(new Void[0]);
    }
}
