
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class A implements e {

    A(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    ReaderTxtActivity a;     // final access specifier removed

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderTxtActivity.d( a )[1].a( n2 );
        n2.b( (e) new B( this ) );
    }
}
