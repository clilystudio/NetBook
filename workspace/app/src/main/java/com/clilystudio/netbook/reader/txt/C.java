package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class C
        implements e<n> {
    final /* synthetic */ ReaderTxtActivity a;
    private /* synthetic */ n b;

    C(ReaderTxtActivity readerTxtActivity, n n2) {
        this.a = readerTxtActivity;
        this.b = n2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a)[2].a(n2);
        this.b.b((e) new D(this));
    }
}
