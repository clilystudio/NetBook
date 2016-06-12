
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class B implements e {

    B(A A1)
    {
        a = A1;
    }

    private A a;

    public final void a(Object Object1)
    {
        n n2 = (n) Object1;

        ReaderTxtActivity.d( a.a )[0].a( n2 );
        ReaderTxtActivity.c( a.a ).setCurrentItem( 2, false );
        ReaderTxtActivity.L( a.a );
    }
}
