package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class A implements e {

    ReaderTxtActivity a;     // final access specifier removed

    A(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderTxtActivity.d(a)[1].a(n2);
        n2.b((e) new B(this));
    }
}
