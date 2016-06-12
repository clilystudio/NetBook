package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class u implements e {

    ReaderRandomActivity a;     // final access specifier removed

    u(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderRandomActivity.i(a)[1].a(n2);
        if (n2 != null)
            n2.a((e) new v(this));
    }
}
