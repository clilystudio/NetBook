
package com.clilystudio.netbook.reader;

import java.util.LinkedList;

final class aS implements e {

    aS(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderActivity.a( a, n2 );
        if( ReaderActivity.g( a ) == 2 && n2 != null )
        {
            Object[] Object_1darray3 = n2.d();

            if( Object_1darray3 != null )
            {
                ReaderActivity.a( a, (String[]) Object_1darray3[0] );
                ReaderActivity.a( a, (LinkedList) Object_1darray3[1] );
                ReaderActivity.c( a, false );
            }
        }
    }
}
