package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class v implements e<n> {
    private /* synthetic */ u a;

    v(u u2) {
        this.a = u2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderRandomActivity.i(this.a.a)[2].a(n2);
        ReaderRandomActivity.u(this.a.a).setCurrentItem(0, false);
        ReaderRandomActivity.v(this.a.a);
    }
}
