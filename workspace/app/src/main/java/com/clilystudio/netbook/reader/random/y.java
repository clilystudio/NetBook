package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class y implements e {

    ReaderRandomActivity a;     // final access specifier removed
    private n b;
    y(ReaderRandomActivity ReaderRandomActivity1, n n2) {
        a = ReaderRandomActivity1;
        b = n2;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderRandomActivity.i(a)[2].a(n2);
        b.b((e) new z(this));
    }
}
