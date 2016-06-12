
package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.o;

final class G implements cc {

    G(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void a()
    {
        o[] o_1darray1 = ReaderRandomActivity.i( a );
        int int2 = o_1darray1.length;
        int int3;

        for( int3 = 0; int3 < int2; ++int3 )
            o_1darray1[int3].a();
        ReaderRandomActivity.j( a );
    }
}
