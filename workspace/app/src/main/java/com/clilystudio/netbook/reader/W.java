package com.clilystudio.netbook.reader;

import java.util.Iterator;
import java.util.List;

final class W
        implements Runnable {
    private /* synthetic */ List a;
    private /* synthetic */ ReaderChapter b;

    W(V v, List list, ReaderChapter readerChapter) {
        this.a = list;
        this.b = readerChapter;
    }

    @Override
    public final void run() {
        Iterator iterator = this.a.iterator();
        while (iterator.hasNext()) {
            ((e) iterator.next()).a(this.b);
        }
    }
}
