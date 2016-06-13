package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class B
        implements e<n> {
    private /* synthetic */ A a;

    B(A a) {
        this.a = a;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a.a)[0].a(n2);
        ReaderTxtActivity.c(this.a.a).setCurrentItem(2, false);
        ReaderTxtActivity.L(this.a.a);
    }
}
