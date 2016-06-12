package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cw;

final class i implements cw {

    private ReaderRandomActivity a;

    i(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void a(int int1) {
        ReaderRandomActivity.c(a, int1);
    }

    public final void b(int int1) {
        if (int1 == 2)
            ReaderRandomActivity.o(a);
        if (int1 == 0)
            ReaderRandomActivity.p(a);
    }
}
