
package com.clilystudio.netbook.reader;

import java.util.List;

final class X implements e {

    X(Reader Reader1, List List2)
    {
        b = Reader1;
        a = List2;
    }

    private List a;
    private Reader b;

    public final void a(Object Object1)
    {
        if( a.size() > 1 )
            Reader.a( b, a.subList( 1, a.size() ) );
    }
}
