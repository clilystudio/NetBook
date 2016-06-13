package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cw;

final class i
        implements cw {
    private /* synthetic */ ReaderRandomActivity a;

    i(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a(int n2) {
        ReaderRandomActivity.c(this.a, n2);
    }

    @Override
    public final void b(int n2) {
        if (n2 == 2) {
            ReaderRandomActivity.o(this.a);
        }
        if (n2 != 0) {
            return;
        }
        ReaderRandomActivity.p(this.a);
    }
}
