package com.clilystudio.netbook.reader;

import java.util.Iterator;
import java.util.List;

final class W
        implements Runnable {
    W(V paramV, List paramList, ReaderChapter paramReaderChapter) {
    }

    public final void run() {
        Iterator localIterator = this.a.iterator();
        while (localIterator.hasNext())
            ((e) localIterator.next()).a(this.b);
    }
}

