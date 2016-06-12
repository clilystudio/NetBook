package com.clilystudio.netbook.reader;

import java.util.Iterator;

final class Q implements Runnable {

    private Reader a;

    Q(Reader Reader1) {
        a = Reader1;
    }

    public final void run() {
        Iterator Iterator1 = Reader.c(a).iterator();

        while (Iterator1.hasNext())
            ((ae) Iterator1.next()).a();
    }
}
