
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.o;

final class L implements cd {

    L(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void a()
    {
        o[] o_1darray1 = ReaderTxtActivity.d( a );
        int int2 = o_1darray1.length;
        int int3;

        for( int3 = 0; int3 < int2; ++int3 )
        {
            o o4 = o_1darray1[int3];

            if( o4 != null )
                o4.c();
        }
        ReaderTxtActivity.q( a );
    }
}
