
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class C implements e {

    C(ReaderTxtActivity ReaderTxtActivity1, n n2)
    {
        a = ReaderTxtActivity1;
        b = n2;
    }

    ReaderTxtActivity a;     // final access specifier removed
    private n b;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderTxtActivity.d( a )[2].a( n2 );
        b.b( (e) new D( this ) );
    }
}
