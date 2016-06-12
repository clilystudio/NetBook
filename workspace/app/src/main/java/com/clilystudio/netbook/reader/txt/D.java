
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class D implements e {

    D(C C1)
    {
        a = C1;
    }

    private C a;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderTxtActivity.d( a.a )[0].a( n2 );
        ReaderTxtActivity.c( a.a ).setCurrentItem( 1, false );
        ReaderTxtActivity.L( a.a );
    }
}
