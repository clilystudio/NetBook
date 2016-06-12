
package com.clilystudio.netbook.util;

final class f extends Thread {

    f(e e1)
    {
        a = e1;
    }

    private e a;

    public final void run()
    {
        try
        {
            e.a( a );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
