package com.clilystudio.netbook.reader;

final class bf
        implements cc {
    private /* synthetic */ ReaderActivity a;

    bf(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderActivity.i(this.a)) {
            if (o2 == null) continue;
            o2.a();
        }
        ReaderActivity.t(this.a);
        this.a.g();
    }
}
