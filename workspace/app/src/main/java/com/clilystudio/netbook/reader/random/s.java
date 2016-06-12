package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class s implements e {

    private ReaderRandomActivity a;

    s(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final volatile void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderRandomActivity.a(a, n2);
    }
}
