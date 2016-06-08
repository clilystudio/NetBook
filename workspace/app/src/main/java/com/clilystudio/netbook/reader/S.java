package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class S
        implements Runnable {
    S(Reader paramReader) {
    }

    public final void run() {
        Iterator localIterator = Reader.c(this.a).iterator();
        while (localIterator.hasNext())
            ((ae) localIterator.next()).b();
    }
}

