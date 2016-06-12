package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class k implements e {

    private o a;
    private ReaderRandomActivity b;
    k(ReaderRandomActivity ReaderRandomActivity1, o o2) {
        b = ReaderRandomActivity1;
        a = o2;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        if (n2.l() > ReaderRandomActivity.g(b))
            ReaderRandomActivity.a(b, n2.l());
        a.a(n2);
    }
}
