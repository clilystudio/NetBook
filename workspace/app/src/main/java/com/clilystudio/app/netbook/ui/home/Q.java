package com.clilystudio.app.netbook.ui.home;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.Q
 * JD-Core Version:    0.6.2
 */