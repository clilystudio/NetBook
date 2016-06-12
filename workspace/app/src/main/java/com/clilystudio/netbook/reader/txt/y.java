package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class y implements e {

    ReaderTxtActivity a;     // final access specifier removed

    y(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderTxtActivity.d(a)[1].a(n2);
        if (n2 != null)
            n2.a((e) new z(this));
    }
}
