package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class S
        implements Runnable {
    private /* synthetic */ Reader a;

    S(Reader reader) {
        this.a = reader;
    }

    @Override
    public final void run() {
        Iterator iterator = Reader.c(this.a).iterator();
        while (iterator.hasNext()) {
            ((ae) iterator.next()).b();
        }
    }
}
