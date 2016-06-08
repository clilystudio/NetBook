package com.clilystudio.netbook.ui.home;

final class R
        implements Runnable {
    R(HomeTransparentActivity paramHomeTransparentActivity) {
    }

    public final void run() {
        this.a.finish();
        this.a.overridePendingTransition(2130968606, 2130968607);
    }
}

