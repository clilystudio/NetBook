package com.clilystudio.netbook.event;

import com.squareup.otto.Bus;
import com.squareup.otto.ThreadEnforcer;

public final class i {
    private static final Bus mBus = new Bus(ThreadEnforcer.MAIN);

    public static Bus a() {
        return mBus;
    }
}
