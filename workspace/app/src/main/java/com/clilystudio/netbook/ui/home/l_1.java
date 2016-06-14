package com.clilystudio.netbook.ui.home;

final class l implements Runnable {
    private /* synthetic */ HomeParentActivity a;

    l(HomeParentActivity homeParentActivity) {
        this.a = homeParentActivity;
    }

    @Override
    public final void run() {
        new m(this.a, 0).b(new Void[0]);
    }
}
