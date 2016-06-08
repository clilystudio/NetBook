package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class Q
        implements Runnable {
    Q(Reader paramReader) {
    }

    public final void run() {
        Iterator localIterator = Reader.c(this.a).iterator();
        while (localIterator.hasNext())
            ((ae) localIterator.next()).a();
    }
}

