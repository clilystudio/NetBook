package com.clilystudio.app.netbook.event;

import com.squareup.otto.Bus;

public final class i_OttoBus {
    public static Bus a() {
        return new Bus();
    }
}
