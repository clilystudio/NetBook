
package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class z implements e {

    z(y y1)
    {
        a = y1;
    }

    private y a;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderRandomActivity.i( a.a )[0].a( n2 );
        ReaderRandomActivity.u( a.a ).setCurrentItem( 1, false );
        ReaderRandomActivity.v( a.a );
    }
}
