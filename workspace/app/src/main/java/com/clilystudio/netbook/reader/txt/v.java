package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class v implements e {

    private ReaderTxtActivity a;

    v(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final volatile void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderTxtActivity.a(a, n2);
    }
}
