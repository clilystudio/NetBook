package com.clilystudio.netbook.reader;

final class cq implements Runnable {

    private ReaderViewPager a;

    cq(ReaderViewPager ReaderViewPager1) {
        a = ReaderViewPager1;
    }

    public final void run() {
        ReaderViewPager.a(a, 0);
        a.b();
    }
}
