package com.clilystudio.netbook.reader;

final class cq
        implements Runnable {
    cq(ReaderViewPager paramReaderViewPager) {
    }

    public final void run() {
        ReaderViewPager.a(this.a, 0);
        this.a.b();
    }
}

