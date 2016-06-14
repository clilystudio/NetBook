package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.ae;

final class e implements ae {
    private /* synthetic */ ReaderRandomActivity a;

    e(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a() {
        ReaderRandomActivity.l(this.a).setVisibility(0);
    }

    @Override
    public final void b() {
        ReaderRandomActivity.l(this.a).setVisibility(8);
    }
}
