
package com.clilystudio.netbook.reader;

import java.util.Iterator;
import java.util.List;

final class W implements Runnable {

    W(V V1, List List2, ReaderChapter ReaderChapter3)
    {
        a = List2;
        b = ReaderChapter3;
    }

    private List a;
    private ReaderChapter b;

    public final void run()
    {
        Iterator Iterator1 = a.iterator();

        while( Iterator1.hasNext() )
            ((e) Iterator1.next()).a( b );
    }
}
