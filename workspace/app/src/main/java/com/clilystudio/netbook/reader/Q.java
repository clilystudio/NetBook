package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class Q implements Runnable {
    private /* synthetic */ Reader a;

    Q(Reader reader) {
        this.a = reader;
    }

    @Override
    public final void run() {
        Iterator iterator = Reader.c(this.a).iterator();
        while (iterator.hasNext()) {
            ((ae) iterator.next()).a();
        }
    }
}
