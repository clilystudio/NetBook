package com.clilystudio.netbook.reader;

final class bf
        implements cc {
    bf(ReaderActivity paramReaderActivity) {
    }

    public final void a() {
        for (o localo : ReaderActivity.i(this.a)) {
            if (localo == null)
                continue;
            localo.a();
        }
        ReaderActivity.t(this.a);
        this.a.g();
    }
}

