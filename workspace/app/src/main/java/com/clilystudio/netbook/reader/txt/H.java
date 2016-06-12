package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cc;

final class H implements cc {

    private ReaderTxtActivity a;

    H(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a() {
        com.clilystudio.netbook.reader.o[] o_1darray1 = ReaderTxtActivity.d(a);
        int int2 = o_1darray1.length;
        int int3;

        for (int3 = 0; int3 < int2; ++int3)
            o_1darray1[int3].a();
        ReaderTxtActivity.o(a);
        ReaderTxtActivity.p(a);
    }
}
