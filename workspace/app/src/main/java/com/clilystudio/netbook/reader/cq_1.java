package com.clilystudio.netbook.reader;

final class cq
        implements Runnable {
    private /* synthetic */ ReaderViewPager a;

    cq(ReaderViewPager readerViewPager) {
        this.a = readerViewPager;
    }

    @Override
    public final void run() {
        ReaderViewPager.a(this.a, 0);
        this.a.b();
    }
}
