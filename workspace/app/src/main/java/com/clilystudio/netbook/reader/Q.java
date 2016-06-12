
package com.clilystudio.netbook.reader;

import java.util.ArrayList;
import java.util.Iterator;

final class Q implements Runnable {

    Q(Reader Reader1)
    {
        a = Reader1;
    }

    private Reader a;

    public final void run()
    {
        Iterator Iterator1 = Reader.c( a ).iterator();

        while( Iterator1.hasNext() )
            ((ae) Iterator1.next()).a();
    }
}
