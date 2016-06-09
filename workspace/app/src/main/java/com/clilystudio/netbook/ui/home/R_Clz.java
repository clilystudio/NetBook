package com.clilystudio.netbook.ui.home;

final class R_Clz
        implements Runnable {
    R_Clz(HomeTransparentActivity paramHomeTransparentActivity) {
    }

    public final void run() {
        this.a.finish();
        this.a.overridePendingTransition(2130968606, 2130968607);
    }
}

