
package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class u implements e {

    u(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    ReaderRandomActivity a;     // final access specifier removed

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderRandomActivity.i( a )[1].a( n2 );
        if( n2 != null )
            n2.a( (e) new v( this ) );
    }
}
