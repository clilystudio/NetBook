package com.clilystudio.netbook.ui.home;

import android.content.Intent;

final class Q implements Runnable {

    private HomeTransparentActivity a;

    Q(HomeTransparentActivity HomeTransparentActivity1) {
        a = HomeTransparentActivity1;
    }

    public final void run() {
        Intent Intent1 = new Intent();

        Intent1.setAction("broadcastOnThemeChanged");
        a.sendBroadcast(Intent1);
    }
}
