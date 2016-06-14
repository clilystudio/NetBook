package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class I implements ce {
    private /* synthetic */ ReaderRandomActivity a;

    I(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderRandomActivity.i(this.a)) {
            if (o2 == null) continue;
            o2.b();
        }
    }
}
