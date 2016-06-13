package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class u
        implements e<n> {
    final /* synthetic */ ReaderRandomActivity a;

    u(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderRandomActivity.i(this.a)[1].a(n2);
        if (n2 != null) {
            n2.a((e) new v(this));
        }
    }
}
