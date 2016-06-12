
package com.clilystudio.netbook.reader.txt;

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

        ReaderTxtActivity.d( a.a )[2].a( n2 );
        ReaderTxtActivity.c( a.a ).setCurrentItem( 0, false );
        ReaderTxtActivity.L( a.a );
    }
}
