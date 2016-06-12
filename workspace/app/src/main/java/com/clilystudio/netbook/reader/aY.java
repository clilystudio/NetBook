
package com.clilystudio.netbook.reader;

final class aY implements Runnable {

    aY(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void run()
    {
        ReaderActivity.ae( a );
    }
}
