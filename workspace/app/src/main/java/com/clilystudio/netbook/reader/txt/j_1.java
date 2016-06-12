
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cw;

final class j implements cw {

    j(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void a(int int1)
    {
        ReaderTxtActivity.f( a, int1 );
    }

    public final void b(int int1)
    {
        if( int1 == 2 )
            ReaderTxtActivity.a( a );
        if( int1 == 0 )
            ReaderTxtActivity.E( a );
    }
}
