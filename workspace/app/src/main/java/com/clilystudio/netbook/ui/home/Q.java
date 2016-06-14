package com.clilystudio.netbook.ui.home;

import android.content.Intent;

final class Q implements Runnable {
    private /* synthetic */ HomeTransparentActivity a;

    Q(HomeTransparentActivity homeTransparentActivity) {
        this.a = homeTransparentActivity;
    }

    @Override
    public final void run() {
        Intent intent = new Intent();
        intent.setAction("broadcastOnThemeChanged");
        this.a.sendBroadcast(intent);
    }
}
