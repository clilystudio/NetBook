package com.clilystudio.netbook.util;

import com.clilystudio.netbook.util.AudioBookNotification;

final class j implements Runnable {
    j(AudioBookNotification.SwitchButtonListener switchButtonListener) {
    }

    @Override
    public final void run() {
        as.a().d();
        e.e().setImageViewResource(2131493607, 2130837584);
        e.g().notify(1001, e.f());
    }
}
