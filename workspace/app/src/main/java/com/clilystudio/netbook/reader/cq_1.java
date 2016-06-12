
package com.clilystudio.netbook.reader;

final class cq implements Runnable {

    cq(ReaderViewPager ReaderViewPager1)
    {
        a = ReaderViewPager1;
    }

    private ReaderViewPager a;

    public final void run()
    {
        ReaderViewPager.a( a, 0 );
        a.b();
    }
}
