
package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class v implements e {

    v(u u1)
    {
        a = u1;
    }

    private u a;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderRandomActivity.i( a.a )[2].a( n2 );
        ReaderRandomActivity.u( a.a ).setCurrentItem( 0, false );
        ReaderRandomActivity.v( a.a );
    }
}
