package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class S implements Runnable {

    private Reader a;

    S(Reader Reader1) {
        a = Reader1;
    }

    public final void run() {
        Iterator Iterator1 = Reader.c(a).iterator();

        while (Iterator1.hasNext())
            ((ae) Iterator1.next()).b();
    }
}
