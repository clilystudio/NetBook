package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.o;

final class K implements cd {

    private ReaderRandomActivity a;

    K(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void a() {
        o[] o_1darray1 = ReaderRandomActivity.i(a);
        int int2 = o_1darray1.length;
        int int3;

        for (int3 = 0; int3 < int2; ++int3)
            o_1darray1[int3].c();
    }
}
