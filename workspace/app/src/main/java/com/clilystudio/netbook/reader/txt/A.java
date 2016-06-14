package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class A implements e<n> {
    final /* synthetic */ ReaderTxtActivity a;

    A(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a)[1].a(n2);
        n2.b((e) new B(this));
    }
}
