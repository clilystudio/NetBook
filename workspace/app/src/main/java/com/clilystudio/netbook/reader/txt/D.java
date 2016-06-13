package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class D
        implements e<n> {
    private /* synthetic */ C a;

    D(C c) {
        this.a = c;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a.a)[0].a(n2);
        ReaderTxtActivity.c(this.a.a).setCurrentItem(1, false);
        ReaderTxtActivity.L(this.a.a);
    }
}
