package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class J implements ce {

    private ReaderTxtActivity a;

    J(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a() {
        o[] o_1darray1 = ReaderTxtActivity.d(a);
        int int2 = o_1darray1.length;
        int int3;

        for (int3 = 0; int3 < int2; ++int3) {
            o o4 = o_1darray1[int3];

            if (o4 != null)
                o4.b();
        }
        ReaderTxtActivity.q(a);
    }
}
