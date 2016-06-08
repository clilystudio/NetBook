package com.clilystudio.netbook.ui.home;

import android.content.Intent;

final class Q
        implements Runnable {
    Q(HomeTransparentActivity paramHomeTransparentActivity) {
    }

    public final void run() {
        Intent localIntent = new Intent();
        localIntent.setAction("broadcastOnThemeChanged");
        this.a.sendBroadcast(localIntent);
    }
}

