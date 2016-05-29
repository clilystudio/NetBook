package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.Q
 * JD-Core Version:    0.6.2
 */