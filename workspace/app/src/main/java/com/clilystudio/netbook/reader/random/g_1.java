package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.G;

final class g
        implements G {
    private /* synthetic */ ReaderRandomActivity a;

    g(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a(int n2) {
        ReaderRandomActivity.b(this.a, n2);
    }
}
