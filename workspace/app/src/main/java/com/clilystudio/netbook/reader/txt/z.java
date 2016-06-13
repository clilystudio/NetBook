package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class z
        implements e<n> {
    private /* synthetic */ y a;

    z(y y2) {
        this.a = y2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a.a)[2].a(n2);
        ReaderTxtActivity.c(this.a.a).setCurrentItem(0, false);
        ReaderTxtActivity.L(this.a.a);
    }
}
