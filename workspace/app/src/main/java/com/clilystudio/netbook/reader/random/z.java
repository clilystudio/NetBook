package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class z implements e<n> {
    private /* synthetic */ y a;

    z(y y2) {
        this.a = y2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderRandomActivity.i(this.a.a)[0].a(n2);
        ReaderRandomActivity.u(this.a.a).setCurrentItem(1, false);
        ReaderRandomActivity.v(this.a.a);
    }
}
