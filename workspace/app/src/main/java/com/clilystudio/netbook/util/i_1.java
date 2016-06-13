package com.clilystudio.netbook.util;

import com.clilystudio.netbook.util.AudioBookNotification;

final class i
        implements Runnable {
    i(AudioBookNotification.SwitchButtonListener switchButtonListener) {
    }

    @Override
    public final void run() {
        as.a();
        as.h();
        e.e().setImageViewResource(2131493607, 2130837925);
        e.g().notify(1001, e.f());
    }
}
