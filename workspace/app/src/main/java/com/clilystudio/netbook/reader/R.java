
package com.clilystudio.netbook.reader;

final class R implements Runnable {

    R(Reader Reader1, Reader$Type Type2)
    {
        b = Reader1;
        a = Type2;
    }

    private Reader$Type a;
    private Reader b;

    public final void run()
    {
        ae ae1 = a.getListener( b );

        if( ae1 != null )
            ae1.a();
    }
}
