package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.S
 * JD-Core Version:    0.6.2
 */