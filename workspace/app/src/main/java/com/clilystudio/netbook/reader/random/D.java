
package com.clilystudio.netbook.reader.random;

final class D implements Runnable {

    D(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void run()
    {
        ReaderRandomActivity.w( a );
    }
}
