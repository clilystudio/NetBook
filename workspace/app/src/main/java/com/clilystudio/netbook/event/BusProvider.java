package com.clilystudio.netbook.event;

import com.squareup.otto.Bus;
import com.squareup.otto.ThreadEnforcer;

public final class BusProvider {
    private static final Bus mBus = new Bus(ThreadEnforcer.MAIN);

    public static Bus getInstance() {
        return mBus;
    }
}
