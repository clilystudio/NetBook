package com.clilystudio.netbook.event;

import com.squareup.otto.Bus;
import com.squareup.otto.ThreadEnforcer;

public final class i {
    private static final Bus a = new Bus(new ThreadEnforcer() {
        @Override
        public void enforce(Bus bus) {

        }
    });
//    private static final b a = new b(m.a);

    public static Bus a() {
        return a;
    }
}
