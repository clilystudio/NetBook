package com.clilystudio.netbook.ui.home;

final class R implements Runnable {
    private /* synthetic */ HomeTransparentActivity a;

    R(HomeTransparentActivity homeTransparentActivity) {
        this.a = homeTransparentActivity;
    }

    @Override
    public final void run() {
        this.a.finish();
        this.a.overridePendingTransition(2130968606, 2130968607);
    }
}
