package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

final class k implements e<n> {
    private /* synthetic */ o a;
    private /* synthetic */ ReaderRandomActivity b;

    k(ReaderRandomActivity readerRandomActivity, o o2) {
        this.b = readerRandomActivity;
        this.a = o2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        if (n2.l() > ReaderRandomActivity.g(this.b)) {
            ReaderRandomActivity.a(this.b, n2.l());
        }
        this.a.a(n2);
    }
}
