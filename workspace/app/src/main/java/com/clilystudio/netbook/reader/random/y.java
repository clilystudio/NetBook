package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class y implements e<n> {
    final /* synthetic */ ReaderRandomActivity a;
    private /* synthetic */ n b;

    y(ReaderRandomActivity readerRandomActivity, n n2) {
        this.a = readerRandomActivity;
        this.b = n2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderRandomActivity.i(this.a)[2].a(n2);
        this.b.b((e) new z(this));
    }
}
